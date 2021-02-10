## Prvá DeMorganowa funkcia
   
**VHDL CODE**

```vhdl
architecture dataflow of gates is
begin
    f_o <=((not b_i) and a_i) or ((not c_i) and (not b_i));
end architecture dataflow;
```



**Link na EDA PLAYGROUND - prvá funkcia**

[EDA PLAYGROUND](https://www.edaplayground.com/x/YDCa).
