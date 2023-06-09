import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue;

  const MessageFieldBox({
    super.key,
    required this.onValue
  });

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide( color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: (){
          final textValue = textController.value.text;
          textController.clear();
          onValue(textValue);
        },
        icon: const Icon( Icons.send_outlined )
      )
    );

    return TextFormField(
      // Cuando se presiona fuera del text se oculte el focus
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      // Cuando se presiona enter o enviar del teclado
      onFieldSubmitted: (value) {
        textController.clear();
        // Mantiene el foco
        focusNode.requestFocus();
        onValue( value );
      },
    );
  }
}