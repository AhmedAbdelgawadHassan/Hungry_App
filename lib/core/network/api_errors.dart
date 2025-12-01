class ApiErrors 
{
  final String errorMessage;
  final int? statusCode;

  ApiErrors({required this.errorMessage,this.statusCode});



  @override
  String toString() {  // Method to return Error message and Status code in string format
    return '{ErrorMessage: $errorMessage, statusCode: $statusCode}';
  }

}