### DeMorganowe funkcie - realizacia vo VHDL

**Link na môj EDA PLAYGROUND**

[EDA PLAYGROUND](https://www.edaplayground.com/x/YDCa).

## Prvá DeMorganowa funkcia
   
**VHDL CODE**

```vhdl
architecture dataflow of gates is
begin
    f_o <=((not b_i) and a_i) or ((not c_i) and (not b_i));
end architecture dataflow;
```

![FUNCKIA 1](Images/funkcia.png)


| **c** | **b** |**a** | **f(c,b,a)** |
| :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 0 |


## Druhá DeMorganowa funkcia - NAND

**VHDL CODE**

```vhdl
architecture dataflow of gates is
begin
    f_nand <=not(not(not b_i) and (a_i)) and (not(not c_i) and (not b_i));
end architecture dataflow;
```

![FUNCKIA 2](Images/funkcianand.png)


| **c** | **b** |**a** | **f(c,b,a)** |
| :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 0 |

## Tretia Demorganova funkcia - NOR

**VHDL CODE**

```vhdl
architecture dataflow of gates is
begin
    f_nor  <=not(b_i or (not a_i) or not (c_i or b_i));
end architecture dataflow;
```

![FUNCKIA 3](Images/funkcianor.png)


| **c** | **b** |**a** | **f(c,b,a)** |
| :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 0 |
