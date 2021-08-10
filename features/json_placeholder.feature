#language:pt

@talk_brk @json_placeholder
Funcionalidade: Validar o endpoint json_placeholder utilizando os verbos post e get
    Eu como usuário da api json_placeholder
    quero que ao consulta-la 
    seja retornado os valores corretamente.

    Contexto:
        Dado que eu acesse a api json_placeholder

    @post @json_placeholder_post
    Cenário: Validar requisição post no json_placeholder
        Quando inserir as informações válidas
        Então receberei sucesso como retorno e as informações inseridas

    @get @json_placeholder_get
    Cenário: Validar requisição get no json_placeholder
        Quando buscar as informações válidas
        Então receberei sucesso como retorno informações solicitadas    
