class MessageModel{
  final String message;

  MessageModel(this.message);

  factory MessageModel.json(json){
    return MessageModel(json['']);
  }
}