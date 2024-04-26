import 'package:flutter/material.dart';

class MyValidation extends StatefulWidget {
  const MyValidation({super.key});

  @override
  State<MyValidation> createState() => _MyValidationState();
}

class _MyValidationState extends State<MyValidation> {
  GlobalKey <FormState> chaveValidacao = GlobalKey();
  TextEditingController senhaController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login de Usuário", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: const Color.fromARGB(255, 80, 104, 239),
        centerTitle: true),
      body: SingleChildScrollView(child: Container(
        padding: EdgeInsets.all(20),
        child: Form(
        key: chaveValidacao,
        child: Column(children: [
        Image.network("https://img.freepik.com/free-vector/privacy-policy-concept-illustration_114360-7853.jpg?w=996&t=st=1714135006~exp=1714135606~hmac=86d6a738d3631d8eda9fe786c59b5b5dda13345afb8f319834d47e640cdbc4a7", height: 300,),
        Text("Login", style: TextStyle(color: const Color.fromARGB(255, 80, 104, 239), fontWeight: FontWeight.bold, fontSize: 35)),
        Divider(thickness: 1, color: Color.fromARGB(255, 136, 136, 136),),
        SizedBox(height: 20,),
        TextFormField(
          controller: senhaController,
          decoration: InputDecoration(labelText: "Nome de Usuário", border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: const Color.fromARGB(255, 80, 104, 239)),),),
          validator: (value) {
            if (value!.isEmpty){
              return("O nome não pode ser vazio"); 
            } else {
              if(value.length < 3){
                return("Digite um nome com pelo menos 5 caracteres");
              }
            }
            return null;
          },
        ),
        SizedBox(height: 20,),
        TextFormField(
          controller: nomeController,
          decoration: InputDecoration(labelText: "Senha", border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.blue),),),
          validator: (value) {
            if (value!.isEmpty){
              return("A senha não pode ser vazia"); 
            } else {
              if(value.length < 3){
                return("Digite um nome com pelo menos 5 caracteres");
              }
            }
            return null;
          },
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          if(chaveValidacao.currentState!.validate()){
            print(senhaController.text + " " + nomeController.text);
          }
          setState(() {
            
          });
        }, child: Text("Cadastrar", style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 80, 104, 239), // Cor de fundo do botão
              onPrimary: Colors.black, // Cor do texto do botão
              elevation: 4, // Altura da sombra
              shadowColor: Colors.black, // Cor da sombra
            ),)
      ],
      ),
      )
      )
      )
    );
  }
}