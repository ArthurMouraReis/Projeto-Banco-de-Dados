// script.js

// Função para lidar com o envio do formulário de contato
document.getElementById('contato-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Previne o envio padrão do formulário

    // Mostra a mensagem de sucesso
    document.getElementById('mensagem-enviada').classList.remove('hidden');

    // Limpa o formulário
    this.reset();
});

// Função para lidar com o envio do formulário de reservas
document.getElementById('reservas-form').addEventListener('submit', function(event) {
    event.preventDefault(); // Previne o envio padrão do formulário

    // Mostra a mensagem de confirmação
    document.getElementById('reserva-confirmada').classList.remove('hidden');

    // Limpa o formulário
    this.reset();
});