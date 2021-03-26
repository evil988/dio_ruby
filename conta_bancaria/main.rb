require "./conta_bancaria/class_conta_bancaria"
require "./conta_bancaria/class_conta_bancaria_tarifada"

evil      = ContaBancaria.new("evil", 100)
javaravas = ContaBancariaTarifada.new("javaravas", 0)

javaravas.depositar(200)
javaravas.transferir(evil, 100)

p evil
p javaravas
