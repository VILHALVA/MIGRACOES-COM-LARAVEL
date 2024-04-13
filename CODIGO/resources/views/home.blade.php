<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bem-vindo</title>
    <!-- Link para o CSS do Bootstrap -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="jumbotron">
            <h1 class="display-4">Bem-vindo ao Sistema de Visualização</h1>
            <p class="lead">Este é um sistema para a Visualização de produtos, categorias e usuários.</p>
            <hr class="my-4">
            <p>Por favor, escolha uma opção abaixo:</p>
            <a class="btn btn-primary btn-lg" href="{{ route('produtos.index') }}" role="button">Ver Produtos</a>
            <a class="btn btn-success btn-lg" href="{{ route('categoria.index') }}" role="button">Ver Categorias</a>
            <a class="btn btn-info btn-lg" href="{{ route('user.index') }}" role="button">Ver Usuários</a>
        </div>
    </div>
</body>
</html>
