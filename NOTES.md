## Packages

### **shelf.dart**

- Has everything available to create de server, even Request and Response methods.

### **shelf_router.dart**

- Makes the task to create routes easier and simpler.

## HTTP

https://developer.mozilla.org/en-US/docs/Web/HTTP

Hypertext Transfer Protocol (HTTP) is an application-layer protocol for transmitting hypermedia documents, such as HTML. It was designed for communication between web browsers and web servers, but it can also be used for other purposes.

HTTP follows a classical client-server model, with a client opening a connection to make a request, then waiting until it receives a response. HTTP is a stateless protocol, meaning that the server does not keep any data (state) between two requests.

### **Query Parameters**

- They are parameters attached to the url, like the name of the home page.

- Is extremely important to avoid using sensitive information as query parameters.

### **Response Status Code**

- Informational responses (100–199)

- Successful responses (200–299)

- Redirection messages (300–399)

- Client error responses (400–499)

- Server error responses (500–599)

https://developer.mozilla.org/en-US/docs/Web/HTTP/Status

### **Request Methods**

https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Methods

#### GET

- O método GET solicita a representação de um recurso específico. Requisições utilizando o método GET devem retornar apenas dados.

#### POST

- O método POST é utilizado para submeter uma entidade a um recurso específico, frequentemente causando uma mudança no estado do recurso ou efeitos colaterais no servidor.

#### PUT

- O método PUT substitui todas as atuais representações do recurso de destino pela carga de dados da requisição.

#### DELETE

- O método DELETE remove um recurso específico.

#### CONNECT

- The HTTP CONNECT method starts two-way communications with the requested resource. It can be used to open a tunnel.

#### OPTIONS

- O método OPTIONS é usado para descrever as opções de comunicação com o recurso de destino.

#### TRACE

- O método TRACE executa um teste de chamada loop-back junto com o caminho para o recurso de destino.

#### PATCH

- O método PATCH é utilizado para aplicar modificações parciais em um recurso.

#### HEAD

- O método HEAD solicita uma resposta de forma idêntica ao método GET, porém sem conter o corpo da resposta.

## MIME types (IANA media types)

https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types

A media type (also known as a Multipurpose Internet Mail Extensions or MIME type) indicates the nature and format of a document, file, or assortment of bytes. MIME types are defined and standardized in IETF's RFC 6838.

The Internet Assigned Numbers Authority (IANA) is responsible for all official MIME types, and you can find the most up-to-date and complete list at their Media Types page.

### **Common MIME types**

https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types

## CRUD

### **Create**

### **Read**

### **Update**

### **Delete**
