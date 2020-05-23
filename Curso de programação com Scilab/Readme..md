# Notas de aula - Scilab

## Criando um diário da seção


```octave
x=diary('diario.txt')
```

    
     x  = 
    
       1.
    



```octave
a=10
b=20
c=a+b
```

    
     a  = 
    
       10.
    
     b  = 
    
       20.
    
     c  = 
    
       30.
    


### Obs: Verificar a criação do arquivo 'diario.txt' na pasta onde estiver trabalhando

# Constantes
Obs: Ao digitar no console um valor constante, este é atribuido a uma variável. No caso 'ans' (abreviação de answer). Isto é feito quando não atribuimos o valor digitado a nenhuma variável definida.
## Inteiros


```octave
5
```

    
     ans  =
    
       5.
    


## Decimal 
Obs: O decimal é ponto e não vírgula

```octave
4.57
```

    
     ans  =
    
       4.57
    


## Pré-definidas

O valor da constante pi=3.1415927


```octave
%pi
```

    
     %pi  = 
    
       3.1415927
    


Base dos logaritmos naturais e=2.7182818


```octave
%e
```

    
     %e  = 
    
       2.7182818
    


Unidade imaginária; raiz quadrada de -1


```octave
%i
```

    
     %i  = 
    
       0. + i  
    


Infinito


```octave
%inf
```

    
     %inf  = 
    
       Inf
    


Valor Lógico  verdade (true)


```octave
%t
```

    
     ans  =
    
      T
    


Valor Lógico Falso (false)


```octave
%f
```

    
     ans  =
    
      F
    


nota a number (não é um número)


```octave
%nan
```

    
     %nan  = 
    
       Nan
    

