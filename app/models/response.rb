class Response < ApplicationRecord
  COMPETENCIES = [
    "Liderazgo", "Auto-gestión", "Hab. Interpersonales", "Comunicación",
    "Habilidades técnicas", "Herramientas Productivas", "Hab. Gerenciales"
  ].freeze

  validates :name, :role, :sex, :age, :edu, :nation, :industry, :years, :size, presence: true
  validates :age, inclusion: { in: 18..99 }
  validates :lmax, :ci, :cr, numericality: true
  validates :weights, :answers, presence: true

  validate :validate_answers_shape

  private

  def validate_answers_shape
    return if answers.blank?
    errors.add(:answers, "must contain 21 comparisons") unless answers.is_a?(Array) && answers.size == 21
  end
end
