class Produto < ActiveRecord::Base
  default_scope :order => 'nome'
  validates :nome, :presence =>true, :uniqueness =>true
  validates :valor, :numericality => {:greater_than_or_equal_to => 0.0}

  has_many :linha_item
  has_many :pedidos, :through => :linha_items
  before_destroy :ensure_not_referenced_by_any_line_item

  def ensure_not_referenced_by_any_line_item
    if linha_items.count.zero?
      return true
    else
      errors[:base] << "Line Items present"
      return false
    end
  end

  def self.busca(busca)
    busca_condition = "%" + busca + "%"
    find(:all, :conditions => ['nome LIKE ? OR descricao LIKE ?', busca_condition, busca_condition])
  end

end
