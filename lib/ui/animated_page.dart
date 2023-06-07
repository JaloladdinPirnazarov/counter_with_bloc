import 'package:counter_with_bloc/bloc/rainbow_bloc.dart';
import 'package:flutter/material.dart';

class RainbowPage extends StatefulWidget {
  const RainbowPage({super.key});

  @override
  State<RainbowPage> createState() => _RainbowPageState();
}

class _RainbowPageState extends State<RainbowPage> {
  RainbowBloc viewModel = RainbowBloc();
  double width = 11;

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: viewModel.outputStream,
          initialData: Colors.red,
          builder: (context, snapshot) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 30,),
                AnimatedContainer(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: snapshot.data,
                        borderRadius: BorderRadius.circular(50)),
                    duration: const Duration(milliseconds: 500)),
                Expanded(child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      SizedBox(width: width,),
                      FloatingActionButton(
                          backgroundColor: Colors.red,
                          onPressed: (){
                            viewModel.eventSink.add(ColorEvent.red);
                          }),
                      SizedBox(width: width,),
                      FloatingActionButton(
                          backgroundColor: Colors.orange,
                          onPressed: (){
                            viewModel.eventSink.add(ColorEvent.orange);
                          }),
                      SizedBox(width: width,),
                      FloatingActionButton(
                          backgroundColor: Colors.yellow,
                          onPressed: (){
                            viewModel.eventSink.add(ColorEvent.yellow);
                          }),
                      SizedBox(width: width,),
                      FloatingActionButton(
                          backgroundColor: Colors.green,
                          onPressed: (){
                            viewModel.eventSink.add(ColorEvent.green);
                          }),
                      SizedBox(width: width,),
                      FloatingActionButton(
                          backgroundColor: Colors.blue,
                          onPressed: (){
                            viewModel.eventSink.add(ColorEvent.blue);
                          }),
                      SizedBox(width: width,),
                      FloatingActionButton(
                          backgroundColor: Colors.orange,
                          onPressed: (){
                            viewModel.eventSink.add(ColorEvent.orange);
                          }),
                      SizedBox(width: width,),
                      FloatingActionButton(
                          backgroundColor: Colors.indigo,
                          onPressed: (){
                            viewModel.eventSink.add(ColorEvent.indigo);
                          }),
                      SizedBox(width: width,),

                    ],
                  ),
                ),)
              ],
            );
          },
        ),
      ),
    );
  }
}
