import 'package:flutter/material.dart';

class CambioMonedaPage extends StatefulWidget {
  @override
  _CambioMonedaPageState createState() => _CambioMonedaPageState();
}

class _CambioMonedaPageState extends State<CambioMonedaPage> {
  String monedaSeleccionada = 'Dólar'; // Valor predeterminado
  double tasaDolar = 24.70;
  double tasaEuro = 26.40;
  double tasaLibraEsterlina = 30.10; // Nueva tasa
  double tasaYenJapones = 0.22; // Nueva tasa
  double cantidadConvertir = 0;
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Moneda'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSeleccionMoneda(),
            SizedBox(height: 16.0),
            _buildInformacionTasas(),
            SizedBox(height: 16.0),
            _buildCampoCantidad(),
            SizedBox(height: 16.0),
            _buildBotonConvertir(),
            SizedBox(height: 16.0),
            _buildResultadoConversion(),
          ],
        ),
      ),
    );
  }

  Widget _buildSeleccionMoneda() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Seleccionar moneda:', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildMonedaButton('Dólar'),
            _buildMonedaButton('Euro'),
            _buildMonedaButton('Libra'),
            _buildMonedaButton('Yen'),
          ],
        ),
      ],
    );
  }

  Widget _buildMonedaButton(String moneda) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          monedaSeleccionada = moneda;
        });
      },
      style: ElevatedButton.styleFrom(
        primary: monedaSeleccionada == moneda ? Colors.blue : null,
      ),
      child: Text(moneda),
    );
  }

  Widget _buildInformacionTasas() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Compra: L. 24.68', style: TextStyle(fontSize: 14.0)),
        Text('Venta: L. 24.80', style: TextStyle(fontSize: 14.0)),
      ],
    );
  }

  Widget _buildCampoCantidad() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Ingrese la cantidad a convertir',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        cantidadConvertir = double.tryParse(value) ?? 0;
      },
    );
  }

  Widget _buildBotonConvertir() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          switch (monedaSeleccionada) {
            case 'Dólar':
              resultado = cantidadConvertir * tasaDolar;
              break;
            case 'Euro':
              resultado = cantidadConvertir * tasaEuro;
              break;
            case 'Libra':
              resultado = cantidadConvertir * tasaLibraEsterlina;
              break;
            case 'Yen':
              resultado = cantidadConvertir * tasaYenJapones;
              break;
          }
        });
      },
      child: Text('Convertir a Lempiras'),
    );
  }

  Widget _buildResultadoConversion() {
    return Text('Resultado de la conversión: $resultado Lempiras', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold));
  }
}

void main() {
  runApp(MaterialApp(
    title: 'App CEUTEC',
    home: CambioMonedaPage(),
  ));
}
