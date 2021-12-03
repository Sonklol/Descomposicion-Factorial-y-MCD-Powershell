# Definir variable 1
[int]$num = Read-Host "Primer Numero: "

# Comprobando que no sea negativa y que sea número
if($num -le 0){
    while(($num -le 0)){
        Clear-Host
        Write-Host "El valor introducido no es mayor a 0 o no es un numero"
        [int]$num = Read-Host "Vuelve a introducir Primer numero: "
    }
}

# Definir variable 2
[int]$num2 = Read-Host "Segundo Numero: "

# Comprobando que no sea negativa y que sea número
if($num2 -le 0){
    while(($num2 -le 0)){
        Clear-Host
        Write-Host "El valor introducido no es mayor a 0 o no es un numero"
        [int]$num2 = Read-Host "Vuelve a introducir Segundo numero: "
    }
}

# Máximo Común Divisor
[int]$res=1
for([int]$i=1;$i -le $num;$i++){
    if(($num%$i -eq 0) -and ($num2%$i -eq 0)){
        $res=$i
    }
}
Write-Host "`nEl MCD (Maximo Comun Divisor) es" $res

# Mínimo Común Múltiplo
[int]$producto
[int]$mcm

$producto = $num * $num2
$mcm = $producto / $res

Write-Host "`nEl MCM (Minimo Comun Multiplo) es" $mcm

# Descomposición factorial primer número
Write-Host "`nLa descomposicion factorial del Primer numero es:" 
for([int]$i2=2; $num -gt 1; $i2++){
    while($num % $i2 -eq 0){
        Write-Host $i2
        $num/= $i2
    }
}

# Descomposición factorial segundo número
Write-Host "`nLa descomposicion factorial del Segundo numero es:" 
for([int]$i3=2; $num2 -gt 1; $i3++){
    while($num2 % $i3 -eq 0){
        Write-Host $i3
        $num2/= $i3
    }
}