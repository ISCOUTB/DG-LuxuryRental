import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E2C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E2C),
        title: const Text('Luxery Rental ⚓'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 37,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: _buildDrawer(),
      body: Row(
        children: [
          NavigationSection(),
          StatsSection(),
          TodoSection(),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      backgroundColor: const Color(0xFF1E1E2C),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF1E1E2C),
            ),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          _buildDrawerItem(Icons.person, 'Profile'),
          _buildDrawerItem(Icons.campaign, 'Gestión de Reservas'),
          _buildDrawerItem(Icons.directions_boat, 'Gestión de Botes'),
          _buildDrawerItem(Icons.find_in_page, 'Análisis y Reportes'),
          _buildDrawerItem(Icons.settings, 'Settings'),
          _buildDrawerItem(Icons.logout, 'Sign out'),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () {},
    );
  }

  // ignore: non_constant_identifier_names
  Widget NavigationSection() {
    return Container(
      width: 200,
      color: const Color(0xFF2E2E3E),
      child: Column(
        children: [
          const ListTile(
              title: Text('Agregar Funcionalidad',
                  style: TextStyle(color: Colors.white))),
          const ListTile(
              title: Text('Agregar Funcionalidad',
                  style: TextStyle(color: Colors.white))),
          const ListTile(
              title: Text('Agregar Funcionalidad',
                  style: TextStyle(color: Colors.white))),
          const ListTile(
              title: Text('Agregar Funcionalidad',
                  style: TextStyle(color: Colors.white))),
          ListTile(
              leading: Icon(Icons.sell_outlined, color: Colors.indigo[400]),
              title: const Text('RENT', style: TextStyle(color: Colors.white))),
          const ListTile(
              title: Text('Agregar Funcionalidad',
                  style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget StatsSection() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Scrollbar(
          thumbVisibility: true,
          // Para siempre mostrar el scrollbar
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _buildStatCard(
                      'Botes Disponibles',
                      '305',
                      Icons.directions_boat_rounded,
                      const Color.fromARGB(255, 0, 255, 64),
                    ),
                    _buildStatCard(
                      'Botes sin Asignar',
                      '10',
                      Icons.directions_boat,
                      const Color.fromARGB(255, 252, 194, 5),
                    ),
                    _buildStatCard(
                      'Botes Pendientes',
                      '7',
                      Icons.directions_boat,
                      const Color.fromARGB(255, 3, 223, 252),
                    ),
                    _buildStatCard(
                      'Mantenimiento',
                      '7',
                      Icons.home_repair_service,
                      Colors.purple,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                  'Estadísticas',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                SizedBox(
                    height: 400,
                    child: _buildIncomeLineChart()), // Gráfico de líneas
                SizedBox(
                    height: 200,
                    child: _buildYachtBarChart()), // Gráfico de barras
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIncomeLineChart() {
    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 30)),
        ),
        borderData: FlBorderData(show: true),
        minX: 0,
        maxX: 10,
        minY: 0,
        maxY: 1000,
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 200),
              const FlSpot(1, 400),
              const FlSpot(2, 300),
              const FlSpot(3, 600),
              const FlSpot(4, 800),
              const FlSpot(5, 500),
              const FlSpot(6, 900),
              const FlSpot(7, 700),
              const FlSpot(8, 600),
              const FlSpot(9, 800),
              const FlSpot(10, 1000),
            ],
            isCurved: true,
            color: const Color.fromARGB(255, 139, 140, 141),
            dotData: const FlDotData(show: true),
            belowBarData: BarAreaData(show: true),
          ),
        ],
      ),
    );
  }

  Widget _buildYachtBarChart() {
    return BarChart(
      BarChartData(
        gridData: const FlGridData(show: false),
        barGroups: [
          BarChartGroupData(x: 0, barRods: [
            BarChartRodData(toY: 5, color: Colors.red, width: 20),
            BarChartRodData(toY: 8, color: Colors.blue, width: 20),
            BarChartRodData(toY: 3, color: Colors.green, width: 20),
          ]),
          BarChartGroupData(x: 1, barRods: [
            BarChartRodData(toY: 10, color: Colors.red, width: 20),
            BarChartRodData(toY: 12, color: Colors.blue, width: 20),
            BarChartRodData(toY: 7, color: Colors.green, width: 20),
          ]),
          BarChartGroupData(x: 2, barRods: [
            BarChartRodData(toY: 4, color: Colors.red, width: 20),
            BarChartRodData(toY: 6, color: Colors.blue, width: 20),
            BarChartRodData(toY: 5, color: Colors.green, width: 20),
          ]),
        ],
        titlesData: const FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: true),
          ),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true, reservedSize: 30)),
        ),
        barTouchData: BarTouchData(enabled: true),
      ),
    );
  }

  Widget TodoSection() {
    return Container(
      width: 200,
      color: const Color.fromARGB(255, 51, 53, 61),
      child: Column(
        children: [
          Container(
            color: const Color(0xFF2E2E3E),
            padding: const EdgeInsets.all(16.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.person, color: Colors.white, size: 48),
                Text('Usuario: Juan Pérez',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(height: 8),
                Text('Cargo: CEO',
                    style: TextStyle(color: Colors.white, fontSize: 14)),
                SizedBox(height: 8),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                    title: Text('Yate : Camila Perez ',
                        style: TextStyle(color: Colors.white))),
                ListTile(
                    title:
                        Text('Tarea 2', style: TextStyle(color: Colors.white))),
                ListTile(
                    title:
                        Text('Tarea 3', style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
      String title, String value, IconData icon, Color color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFF2E2E3E),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 40),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
