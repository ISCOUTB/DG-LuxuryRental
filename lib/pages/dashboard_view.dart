import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:login_user/pages/YachtListPage.dart';
import 'checkout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E2C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E2C),
        title: const Text('Luxury Rental ⚓'),
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
      drawer: _buildDrawer(context),
      body: Row(
        children: [
          NavigationSection(),
          StatsSection(),
          TodoSection(),
        ],
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
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
          _buildDrawerItem(context, Icons.person, 'Profile'),
          _buildDrawerItem(context, Icons.campaign, 'Gestión de Reservas'),
          _buildDrawerItem(context, Icons.directions_boat, 'Gestión de Botes'),
          _buildDrawerItem(context, Icons.find_in_page, 'Análisis y Reportes'),
          _buildDrawerItem(context, Icons.settings, 'Settings'),
          _buildDrawerItem(context, Icons.logout, 'Sign out'),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () {
        if (title == 'Sign out') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const YachtListPage(),
            ),
          );
        }
      },
    );
  }
}

class NavigationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: const Color(0xFF2E2E3E),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.sell_outlined, color: Colors.indigo[400]),
            title: const Text('RENT', style: TextStyle(color: Colors.white)),
            tileColor: const Color(0xFF1E1E2C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget StatsSection() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Estadísticas',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _buildStatCard(
                      'Botes Disponibles',
                      '305',
                      Icons.directions_boat_rounded,
                      const Color.fromARGB(255, 0, 255, 64),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildStatCard(
                      'Botes sin Asignar',
                      '10',
                      Icons.directions_boat,
                      const Color.fromARGB(255, 252, 194, 5),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildStatCard(
                      'Botes Pendientes',
                      '7',
                      Icons.directions_boat,
                      const Color.fromARGB(255, 3, 223, 252),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildStatCard(
                      'Mantenimiento',
                      '7',
                      Icons.home_repair_service,
                      Colors.purple,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(height: 400, child: _buildIncomeLineChart()),
              SizedBox(height: 200, child: _buildYachtBarChart()),
            ],
          ),
        ),
      ),
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
            ],
          ),
        ),
        const SizedBox(height: 40),
        Expanded(
          child: ListView(
            children: const [
              ListTile(
                  title: Text('Yate: Camila Pérez',
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

Widget _buildStatCard(String title, String value, IconData icon, Color color) {
  return Card(
    color: const Color(0xFF2E2E3E),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Icon(icon, color: color, size: 40),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 4),
          Text(value,
              style: const TextStyle(color: Colors.white, fontSize: 24)),
        ],
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
          spots: const [
            FlSpot(0, 200),
            FlSpot(1, 400),
            FlSpot(2, 300),
            FlSpot(3, 600),
            FlSpot(4, 800),
            FlSpot(5, 500),
            FlSpot(6, 900),
            FlSpot(7, 700),
            FlSpot(8, 600),
            FlSpot(9, 800),
            FlSpot(10, 1000),
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
          BarChartRodData(toY: 5, color: const Color.fromARGB(255, 243, 140, 6))
        ]),
      ],
    ),
  );
}
