require './conta_bancaria/class_conta_bancaria'

class ContaBancariaTarifada < ContaBancaria
  TARIFA = 1.05

  def initialize(nome, saldo)
    super(nome, saldo)
  end

  def transferir(outra_conta, quantia, tarifa = TARIFA)    
    super
  end
end
