class ContaBancaria
  attr_reader :nome, :saldo

  SI = "Saldo Insuficiente"

  def initialize(nome, saldo)
    @nome   = nome
    @saldo  = saldo
  end

  def transferir(outra_conta, quantia, tarifa = 1)        
    if validar?(quantia * tarifa)
      debitar(quantia * tarifa)
      outra_conta.depositar(quantia)
    else
      puts(SI)
    end
  end

  def sacar(quantia)
    validar?(quantia) ? debitar(quantia) : puts(SI)
  end  

  def depositar(quantia)
    @saldo += quantia
  end

  def validar?(quantia)
    @saldo >= quantia ? true : false
  end

  private def debitar(quantia)
    @saldo -= quantia
  end
end
