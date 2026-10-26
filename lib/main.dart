import 'package:flutter/material.dart';

void main() {
  runApp(const ConscienciaVivaApp());
}

class ConscienciaVivaApp extends StatelessWidget {
  const ConscienciaVivaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consciência Viva',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Correção das cores: Utilizando o padrão correto 0xFF do Flutter
        scaffoldBackgroundColor: const Color(0xFFFAEDCD), // Creme Claro
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4A2810), // River Bed / Terracota
          primary: const Color(0xFF4A2810),
          secondary: const Color(0xFFD4A373), // Dourado
        ),
        useMaterial3: true,
      ),
      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const OrigemScreen(),
    const PersonalidadesScreen(),
    const CulturaScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '✊🏿 Consciência Viva',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF4A2810),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF4A2810),
        selectedItemColor: const Color(0xFFD4A373),
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Origem'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Ícones'),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Cultura',
          ),
        ],
      ),
    );
  }
}

// ================= PÁGINA 1: HOME =================
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF4A2810),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Espaço Consciência Viva',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFAEDCD),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Um portal dedicado ao resgate histórico, celebração cultural e reflexão ativa.',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Reflexão e História',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4A2810),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Este aplicativo foi planejado como um espaço de educação e sensibilização. Nosso objetivo é provocar uma reflexão profunda sobre o racismo estrutural e destacar como a negritude moldou nossa identidade nacional.',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 24),
          Card(
            color: const Color(0xFFD4A373),
            elevation: 2,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '🗓️ 20 de Novembro',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4A2810),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Marca o aniversário de morte de Zumbi dos Palmares, o maior líder de resistência quilombola das Américas. Serve para lembrar que a liberdade foi conquistada por meio de séculos de lutas ativas do próprio povo.',
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ================= PÁGINA 2: ORIGEM =================
class OrigemScreen extends StatelessWidget {
  const OrigemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'A Construção da Data',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4A2810),
            ),
          ),
          const Divider(color: Color(0xFFD4A373), thickness: 2),
          const SizedBox(height: 8),
          const Text(
            'A data nasceu na década de 1970 através da militância do Grupo Palmares, no Rio Grande do Sul. O grupo questionava a celebração do 13 de maio, argumentando que a abolição formal deixou os negros desamparados, sem moradia, terras ou acesso à educação básica.',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 24),
          const Text(
            'O Quilombo dos Palmares',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4A2810),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Localizado na Serra da Barriga, em Alagoas, funcionou como uma verdadeira república livre que abrigou mais de 20 mil habitantes. Zumbi defendeu Palmares intensamente até ser capturado e morto em 20 de novembro de 1695, tornando-se o maior símbolo de liberdade e resistência da história do país.',
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}

// ================= PÁGINA 3: PERSONALIDADES =================
class PersonalidadesScreen extends StatelessWidget {
  const PersonalidadesScreen({super.key});

  final List<Map<String, String>> herois = const [
    {
      'nome': 'Machado de Assis',
      'tag': 'Literatura',
      'desc': 'O maior nome da literatura brasileira e fundador da Academia Brasileira de Letras. Escreveu clássicos mundiais incontestáveis como Dom Casmurro.',
    },
    {
      'nome': 'Dandara dos Palmares',
      'tag': 'Resistência',
      'desc': 'Guerreira fundamental nas táticas de defesa do Quilombo dos Palmares, dominava a capoeira e liderava falanges armadas em batalhas.',
    },
    {
      'nome': 'Carolina Maria de Jesus',
      'tag': 'Escritora',
      'desc': 'Registrou a dura realidade da favela em cadernos encontrados no lixo, dando origem à renomada obra literária internacional "Quarto de Despejo".',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: herois.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          margin: const EdgeInsets.only(bottom: 16),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  herois[index]['nome']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4A2810),
                  ),
                ),
                const SizedBox(height: 4),
                Chip(
                  label: Text(herois[index]['tag']!),
                  backgroundColor: const Color(0xFFFAEDCD),
                ),
                const SizedBox(height: 8),
                Text(
                  herois[index]['desc']!,
                  style: const TextStyle(fontSize: 15, color: Colors.black87),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// ================= PÁGINA 4: CULTURA (CORRIGIDA) =================
class CulturaScreen extends StatelessWidget {
  const CulturaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nossa Identidade Cultural',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF4A2810)),
          ),
          const Divider(color: Color(0xFFD4A373), thickness: 2),
          const SizedBox(height: 16),
          _buildCulturaItem(
            '🍲 Gastronomia', 
            'Pratos como a feijoada (adaptada com cortes disponíveis na colônia) e o acarajé (herança direta baiana e iorubá) reconstruíram e definiram a cozinha do país.'
          ),
          const SizedBox(height: 20),
          _buildCulturaItem(
            '🥁 Ritmos e Música', 
            'O samba, maracatu e o axé nasceram diretamente da necessidade de manifestação social e espiritual dos povos pretos através do ritmo forte dos tambores.'
          ),
          const SizedBox(height: 20),
          _buildCulturaItem(
            '🤸 Capoeira', 
            'Nascida como uma arte marcial letal disfarçada de dança para enganar os feitores, foi uma ferramenta crucial para a fuga, defesa e sobrevivência dos quilombolas.'
          ),
        ],
      ),
    );
  }

  // Função auxiliar com fechamento de chaves e parênteses totalmente corrigido
  Widget _buildCulturaItem(String titulo, String descricao) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black, 
            blurRadius: 4, 
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo, 
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF4A2810)),
          ),
          const SizedBox(height: 8),
          Text(
            descricao, 
            style: const TextStyle(fontSize: 15, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}