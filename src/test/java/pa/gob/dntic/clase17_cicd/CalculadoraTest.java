package pa.gob.dntic.clase17_cicd;

import org.junit.jupiter.api.Test;
import pa.gob.dntic.clase17_cicd.Calculadora.Calculadora;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CalculadoraTest {

    @Test  //para indicar que es un prueba
    void suma_dos_numeros(){
        assertEquals(5,new Calculadora().sumar(2,3));
    }
}
