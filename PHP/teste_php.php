<?php

$arrayDeNascimento = [
'Francisco Souza' => '10-12-1996',
'Arthur Golveia' => '14-01-2000',
'Guilherme Rosa' => '26-05-1985',
'Marcelo Planalto' => '26-05-1985'
];

$nomes = ['Francisco Souza', 'Guilherme Rosa', 'Arthur Golveia'];
$cliente1 = new stdClass();
$cliente1->nome = $nomes[0];
$cliente1->nascimento = $arrayDeNascimento[$nomes[0]];
$cliente2 = new stdClass();
$cliente2->nome = $nomes[1];
$cliente2->nascimento = $arrayDeNascimento[$nomes[1]];
$cliente3 = new stdClass();
$cliente3->nome = $nomes[2];
$cliente3->nascimento = $arrayDeNascimento[$nomes[2]];

$arrayDeClientes = [$cliente1, $cliente2, $cliente3];


echo ($arrayDeClientes[1] -> nome);

echo ("<br/>");



function compdata ( $a, $b ) : bool {
    $date1 = strtotime( $a -> nascimento );
    $date2 = strtotime( $b -> nascimento );
    
    if ($date1 == $date2){
        return 0;
   }
    
    return ($date1 < $date2) ? -1 : 1;
};

usort($arrayDeClientes , "compdata");

echo ("<br/>" . $arrayDeClientes[0] -> nome . "  nascido em " . $arrayDeClientes[0] -> nascimento);
echo ("<br/>" . $arrayDeClientes[1] -> nome . "  nascido em " . $arrayDeClientes[1] -> nascimento);
echo ("<br/>" . $arrayDeClientes[2] -> nome . "  nascido em " . $arrayDeClientes[2] -> nascimento);

?>