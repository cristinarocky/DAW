<?php

namespace App\Controllers;

use CodeIgniter\Controller;

class Home extends BaseController
{
    protected $db;

    public function initController(\CodeIgniter\HTTP\RequestInterface $request, \CodeIgniter\HTTP\ResponseInterface $response, \Psr\Log\LoggerInterface $logger)
    {
        // Llama al constructor de la clase padre
        parent::initController($request, $response, $logger);

        // Conexión a la base de datos
        $this->db = \Config\Database::connect();
    }

    public function index(): string
    {
        return view('welcome_message');
    }

    public function hola()
    {
        // Consultar datos de la tabla persona
        $query_persona = $this->db->query('SELECT * FROM persona');
        $personas = $query_persona->getResultArray();

        // Consultar datos de la tabla productos
        $query_productos = $this->db->query('SELECT * FROM productos');
        $productos = $query_productos->getResultArray();

        // Formar el array de datos
        $data = [
            'personas' => $personas,
            'productos' => $productos
        ];

        // Devolver los datos en formato JSON
        return $this->response->setJSON($data);
    }
}
