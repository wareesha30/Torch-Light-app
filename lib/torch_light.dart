import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class Torchlight extends StatefulWidget {
  const Torchlight({super.key});

  @override
  State<Torchlight> createState() => _TorchlightState();
}

class _TorchlightState extends State<Torchlight> {
  final bgcolor = const Color.fromARGB(255, 74, 152, 151);
  final txtcolor = const Color.fromARGB(255, 255, 255, 255);
  // ignore: non_constant_identifier_names
  var IsActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Torch Light", style: TextStyle(color: txtcolor)),
      ),
      body: Center(
        child: Column(children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  IsActive ? 'assets/torch_on.png' : 'assets/torch_off.png',
                  width: 200,
                  height: 200,
                  color: IsActive ? null : txtcolor.withOpacity(0.2),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                CircleAvatar(
                    minRadius: 30,
                    maxRadius: 45,
                    child: Transform.scale(
                      scale: 1.5,
                      child: IconButton(
                          onPressed: () {
                            controller.toggle();
                            IsActive = !IsActive;
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.power_settings_new,
                          )),
                    ))
              ],
            ),
          )),
          Text("Developed by Wareesha Khan",
              style: TextStyle(color: txtcolor, fontSize: 14)),
          SizedBox(
            height: size.height * 0.05,
          ),
        ]),
      ),
    );
  }
}
