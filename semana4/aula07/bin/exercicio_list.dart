import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("\x1B[2J\x1B[0;0H");

  final eventList = <Map<String, dynamic>>[];
  String number;

  //menu
  void showOptions() {
    print(
        "\n 1 - Adicionar novo evento.\n 2 - Atualizar evento existente. \n 3 - Mostrar eventos cadastrados. \n 4 - Remover evento cadastrado.  \n 0 - Sair. ");
  }

  // function to validate input string from user
  String inputUserAndValidate(String text) {
    print(text);
    final dataEvent = stdin.readLineSync()!;

    return dataEvent;
  }

  // function to validate input int from user
  int inputItem(String text) {
    print("Informe o número:");
    final eventNumber = stdin.readLineSync()!;
    return int.parse(eventNumber);
  }

  // function to add events
  void addEvent({
    required String eventName,
    required String eventType,
    required String eventLocal,
    required String eventTime,
  }) {
    final events = <String, dynamic>{
      'eventName': eventName,
      'eventType': eventType,
      'eventLocal': eventLocal,
      'eventTime': eventTime,
    };

    eventList.add(events);
  }

  // function to show the events created
  void showEvents() {
    for (int i = 0; i < eventList.length; i++) {
      print("${i + 1} Evento: ${eventList[i]['eventName']}");
    }
  }
 
  //function to show only one event
  void showEvent(int index) {
    if (index < eventList.length) {
      print('''
  [1] nome: ${eventList[index]['eventName']}
  [2] tipo: ${eventList[index]['eventType']}
  [3] local: ${eventList[index]['eventLocal']}
  [4] data: ${eventList[index]['eventTime']}
''');
    } else {
      print("evento não encontrado!");
    }
  }

  //function to update event with switch/case
  void updateEvent(int index) {
    showEvent(index);

    final eventIndex = inputItem("Qual item do evento vai editar?");

    switch (eventIndex) {
      case 1:
        final newNameEvent = inputUserAndValidate("Informe o novo nome!");
        eventList[index].update('eventName', (value) => newNameEvent);
        break;
      case 2:
        final newEeventType = inputUserAndValidate("Informe o novo tipo!");
        eventList[index].update('eventType', (value) => newEeventType);
        break;
      case 3:
        final newEventLocal = inputUserAndValidate("Informe o novo local!");
        eventList[index].update('eventLocal', (value) => newEventLocal);
        break;
      case 4:
        final newTimeEvent = inputUserAndValidate("Informe o novo horário!");
        eventList[index].update('eventTime', (value) => newTimeEvent);
        break;
      default:
        print("Item não existe!");
    }
  }

  //function to delete an event
  void deleteEvent(int index) {
    if (index < eventList.length) {
      eventList.removeAt(index);
    } else {
      print("Evento não encontrado!");
    }
  }

  //do-while with switch-case for the menu
  do {
    showOptions();
    number = stdin.readLineSync()!;
    //1 - add event with the informations of name, type, local and data
    switch (number) {
      case "1":
        print("Adicionar novo evento.");
        final eventName = inputUserAndValidate("Informe o nome do evento:");
        final eventType = inputUserAndValidate("Informe o tipo do evento:");
        final eventLocal = inputUserAndValidate("Informe o local do evento:");
        final eventTime = inputUserAndValidate("Informe a data do evento:");

        addEvent(
          eventName: eventName,
          eventType: eventType,
          eventLocal: eventLocal,
          eventTime: eventTime,
        );
        break;
      // 2 - update evento
      case "2":
        showEvents();

        final index = inputItem("Digite o número do evento a ser editado!");
        updateEvent(index - 1);
        break;
      //3 - events listed
      case "3":
        print("Lista de eventos cadastrados!");
        showEvents();
        break;

      //4 - deleting event
      case "4":
        showEvents();
        final index = inputItem("Digite o número do evento a ser deletado");

        deleteEvent(index - 1);
        print("Evento deletado!");
        break;
      // 0 - exiting the menu and the app
      case "0":
        break;
    }
  } while (number != "0");
}
