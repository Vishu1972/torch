import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchHomePage extends StatefulWidget {
  const TorchHomePage({Key? key}) : super(key: key);

  @override
  State<TorchHomePage> createState() => _TorchHomePageState();
}

class _TorchHomePageState extends State<TorchHomePage> {
  final bgColor = Color(0xff2c3333);
  final textColor = Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text("TorchLite",style: TextStyle(color: textColor),),

      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(isActive ?"Assets/tof.png":"Assets/ton.png",
                  width: 200,
                    height: 200,
                    // color: isActive ?null: textColor.withOpacity(0.2),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *0.1,
                  ),
                  IconButton(onPressed: (){
                    controller.toggle();
                    isActive = !isActive;
                    setState(() {

                    });
                  },
                      iconSize: 80,
                      icon: Image.asset(isActive ? "Assets/off.png" :"Assets/on.png")),
                  // CircleAvatar(
                  //   image
                  //   minRadius: 30,
                  //   maxRadius: 45,
                  //   child: Transform.scale(
                  //     scale: 1.5,
                  //     child: IconButton(onPressed: () {
                  //       controller.toggle();
                  //       isActive = !isActive;
                  //       setState(() {
                  //
                  //       });
                  //     },
                  //       icon: Icon(Icons.power_settings_new),
                  //
                  //
                  //
                  //
                  //     ),
                  //   ),
                  // )
                ],
              )
          ),
          Container(
              alignment:Alignment.center,child: Text("Developed by vishal verma",style: TextStyle(color: textColor,fontSize: 14),)),
          SizedBox(height: MediaQuery.of(context).size.height*0.03,)
        ],
      ),
    );
  }
}
