# RabbitMQ gen_coap Integration

RabbitMQ wrapper for the
[Generic Erlang CoAP Client/Server](https://github.com/gotthardp/gen_coap).

This is a legacy code. It is not required for RabbitMQ v3.6.x and beyond.

### Installation from source

    $ git clone https://github.com/rabbitmq/rabbitmq-public-umbrella.git
    $ cd rabbitmq-public-umbrella
    $ make co
    $ ./foreachrepo git checkout <tag>
    $ git clone https://github.com/gotthardp/rabbitmq-gen-coap.git
    $ cd rabbitmq-gen-coap
    $ make
