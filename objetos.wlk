
class CuentaCorriente{ 
	var saldo = 0
	
	method saldo(){ 
		return saldo 
	}

	method depositar(monto) { saldo += monto }

	method extraer(monto) { saldo -= monto }
}

class Persona {
	const miCuenta// = new CuentaCorriente()
	
	method cobrar(monto) { 
		miCuenta.depositar(monto)
	}
	
	method gastar(monto) { 
		miCuenta.extraer(monto)
	}
	
	method ahorros() { 
		return miCuenta.saldo()
	}
}

const cuentaCorriente = new CuentaCorriente()

object cuentaCorriente2 { //==1=referencia  <--> 2=objeto
	var property saldo = 0
	
	method depositar(monto) { saldo += monto }
	
	method extraer(monto) { saldo -= monto }
}


object colchon {
	var property dinero = 0
	method guardar(monto) { dinero += monto }
}

object pepe {
	const cajaFuerte = colchon
	var miCuenta =  new CuentaCorriente()
	const miCuentaSecundaria =  new CuentaCorriente()
	
	method miCuenta(_miCuenta){
		miCuenta = _miCuenta
	}
	method cobrar(monto) { 
		cajaFuerte.guardar(monto / 2)
		miCuentaSecundaria.guardar(monto / 2)
	}
	method gastar(monto) { 
		miCuenta.extraer(monto)
	}
	method ahorros() { 
		return miCuenta.saldo() + cajaFuerte.dinero()
	}
}
//en homenaje a Rebeca Cherep de Guber 
//https://es.wikipedia.org/wiki/Rebeca_Guber
const rebeca = new Persona(miCuenta = new CuentaCorriente(saldo = 1000))


//Ejemplo clases en Pepita
//const pepita = new Ave(energia = 100)
//const pepon = new AvePocoEficiente(energia = 80)
/*
class Ave{
	var energia = 0

	method volar(distancia){
		energia -= 10 + distancia
	}

	method comer(alimento){
		energia += alimento.energiaQueAporta()
	}

}

class AvePocoEficiente{
	var energia = 0

	method volar(distancia){
		energia -= 20 + 2 * distancia
	}

	method comer(alimento){
		energia += alimento.energiaQueAporta() / 2
	}

}

class Entrenador{
	var ave
	var cenas = 0

	method alimenta(comida){
		ave.comer(comida)
		cenas += 1
	}

	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
}
*/













