import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreens extends StatelessWidget {

    static const String name = 'buttons_screen'; 


  const ButtonsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screens'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.arrow_back_ios_new_rounded),
      onPressed: (){
        context.pop();
      },
  ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    
    return SizedBox(
      width: double.infinity,
      child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed:(){}, child: const Text('Elevated ')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Dissabled')),

            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.access_alarm_rounded),
            label: Text('Elevated Icon'),),

            FilledButton(onPressed: (){}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.import_contacts  ),
              label: const Text('Filled Icon'),
              ),

            OutlinedButton(onPressed: (){}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.terminal),
              label: const Text('Outline Icon'),
              ),  

            TextButton(onPressed: (){}, child: const Text('Text')),
            TextButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.integration_instructions_outlined),
              label:const Text('Text Icon') 
              ),  

              const CustomButton(),

            IconButton(onPressed: (){}, icon: const Icon(Icons.add_ic_call_rounded)),
            IconButton(
              onPressed: (){},
              icon: const Icon(Icons.insert_chart_outlined_outlined),
              style:ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: const WidgetStatePropertyAll(Colors.white),
              ),
              ),
  
        ],
      ),
    ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: colors.primary,
        elevation: 3,
        shadowColor: colors.primary.withOpacity(0.4),
        child: InkWell(
          onTap: (){},
          splashColor: Colors.white.withOpacity(0.15),
          highlightColor: Colors.white.withOpacity(0.05),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            child: Text(
              'Messi',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
