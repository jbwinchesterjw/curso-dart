class Animal{
  String? nome;
  int? idade;

  void comer(){
    print("Comeu");
  }
  void dormir(){
    print("Dormiu");
  }

  Animal(this.nome, this.idade);

  /**
   * isso e possível pq em toda class pai por de baixo dos panos eu extend um
   * class chamada Object object = Object(); onde tenho 3 métodos toString, hasCode
   */
  @override
  String toString(){
    return 'Nome: $nome Idade: $idade';
  }
}

class Cachorro extends Animal{
  Cachorro(String nome, int idade) : super(nome, idade){
    print('Criando o cachorro $nome');
  }//Craição de contrutor!

  void latir(){
    print("Cachorro latiu!");
  }

  @override
  void comer(){
    print("Come muito!");
  }

  @override
  void dormir(){
    super.dormir();// Esta sendo chamado o método da class pai
    print("Dorme roncando!");
  }

  // @override
  // String toString(){
  //   return 'Cachorro - Nome: $nome Idade: $idade';
  // }
}

class Gato extends Animal{
  Gato(String nome, int idade): super(nome, idade);
  void miar(){
    print("Gato miando!");
  }

  @override
  void comer(){
    print("Come pouco!");
  }

  @override
  void dormir(){
    print("Dorme calmo!");
  }

  // @override
  // String toString(){
  //   return 'Gato - Nome: $nome Idade: $idade';
  // }
}

void main(){
  var cachorro =  Cachorro('Jack', 7);
  // cachorro.nome = "Jack";
  // cachorro.idade = 7;
  cachorro.latir();
  cachorro.comer();
  cachorro.dormir();

  var gato = Gato('Mel', 6);
  // gato.nome = "mel";
  // gato.idade = 7;
  gato.miar();
  gato.comer();
  gato.dormir();

  List<Animal> animais = [];
  animais.add(cachorro);
  animais.add(gato);

  //print("nome ${cachorro.nome}, ${cachorro.idade}");

  print(gato);

  //Animal animal = animais.first;
  // Animal animal = funcao();
  // if(animal is Cachorro){
  //   animal.latir();
  // } else if(animal is Gato){
  //   animal.miar();
  // }
  //
  // Animal funcao() {
  //   return Cachorro();
  // }

}