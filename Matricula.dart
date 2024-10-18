import 'dart:io';

void main(){
  String cpf = '';
  String nome = '';
  int idade = 0;
  String sexo = '';
  String telefone = '';
  int idMatricula = 0;
  int idCurso = 0;
  String cpfAluno = '';
  String nomeCurso = '';
  String cargaHoraria = '';
  String valor = '';

  Aluno alunos = Aluno(nome, telefone, sexo, idade, cpf);
  Matricula matriculas = Matricula(idMatricula, idCurso, cpfAluno);
  Curso cursos = Curso(idCurso, nomeCurso, cargaHoraria, valor);

  print('Digite o nome do aluno: ');
  String nome1 = alunos.nome = stdin.readLineSync()!;

  print('Digite o cpf do aluno:');
  String cpf1 = alunos.cpf = stdin.readLineSync()!;

  print('Digite a Idade do aluno:');
  int idade1 = alunos.idade = int.parse(stdin.readLineSync()!);

  print('Qual o sexo do aluno:');
  String sexo1 = alunos.sexo = stdin.readLineSync()!;

  print('Digite o telefone do aluno: ');
  String telefone1 = alunos.telefone = stdin.readLineSync()!;

  print('Digite o telefone do aluno: ');
  String valor1 = cursos.valor = stdin.readLineSync()!;

  matriculas.escolherMatricula();

  Aluno.alunos.add(alunos);
  print('${alunos.getDados()}');

  Matricula.matriculas.add(matriculas);
  print('${matriculas.getDadosMAT()}');

  Curso.cursos.add(cursos);
  print('${cursos.getDadosCURS()}');



}

class Aluno{
  String cpf = '';
  String nome = '';
  int idade = 0;
  String sexo = '';
  String telefone = '';

  static List<Aluno> alunos = [];
  Aluno(this.nome,this.telefone,this.sexo,this.idade,this.cpf);

  String getDados(){
    String dados = "";
    for(int i = 0; i < alunos.length; i++){
      dados +=
          """
          Matricula realizada com sucesso!
          
          Nome: ${alunos[i].nome}
          Sexo: ${alunos[i].sexo}
          cpf: ${alunos[i].cpf}
          Idade: ${alunos[i].idade} anos
          Telefone: ${alunos[i].telefone}
          """;
    }
    return dados;
  }
}

class Matricula{
  int idMatricula = 0;
  int idCurso = 0;
  String cpfAluno = '';

  static List<Matricula> matriculas = [];
  Matricula(this.idMatricula,this.idCurso,this.cpfAluno);

  String getDadosMAT(){
    String dados = "";
    for(int i = 0; i < matriculas.length; i++){
      dados +=
      """
          Id Curso: ${matriculas[i].idCurso}
          """;
    }
    return dados;
  }

  void escolherMatricula(){
    print('Escolha o curso que deseja se matricular: \n');
    print('1) Medicina \n 2) Direito \n 3)Sistema de informação');

    String nomeCurso = stdin.readLineSync()!;

    switch (nomeCurso) {
      case '1':
        print('Medicina');
        break;
      case '2':
        print('Direito');
        break;
      case '3':
        print('Sistema de informação');
        break;
      default:
        print('Curso não encontrado');
    }
   print('O curso escolhido foi ${nomeCurso}');
  }

}
class Curso{
  int idCurso = 0;
  String nomeCurso = '';
  String cargaHoraria = '';
  String valor = '';

  static List<Curso> cursos = [];
  Curso(this.idCurso,this.nomeCurso,this.cargaHoraria, this.valor);

  String getDadosCURS(){
    String dados = "";
    for(int i = 0; i < cursos.length; i++){
      dados +=
      """
          Nome Curso: ${cursos[i].nomeCurso};
          Valor do Curso: ${cursos[i].valor},00;
          """;
    }
    return dados;
  }


}