## Cvičenie 7

# PREPARATION TASK

| **D** | **Qn** | **Q(n+1)** | **Comments** |
| :-: | :-: | :-: | :-- |
| 0 | 0 | 0 | No change  |
| 0 | 1 | 0 | Change  |
| 1 | 0 | 1 | Change  |
| 1 | 1 | 1 | No change |

| **J** | **K** | **Qn** | **Q(n+1)** | **Comments** |
| :-: | :-: | :-: | :-: | :-- |
| 0 | 0 | 0 | 0 | No change |
| 0 | 0 | 1 | 1 | No change |
| 0 | 1 | 0 | 0 | Reset |
| 0 | 1 | 1 | 0 | Reset |
| 1 | 0 | 0 | 1 | Set |
| 1 | 0 | 1 | 1 | Set |
| 1 | 1 | 0 | 1 | Toggle |
| 1 | 1 | 1 | 0 | Toggle |

| **T** | **Qn** | **Q(n+1)** | **Comments** |
| :-: | :-: | :-: | :-- |
| 0 | 0 | 0 | No change  |
| 0 | 1 | 1 | No change |
| 1 | 0 | 1 | Invert (Toggle) |
| 1 | 1 | 0 | Invert (Toggle) |

# D latch VHDL SOURCE - p_d_latch process

```vhdl
     p_d_latch :process (en,d,arst)
     begin
       if (arst ='1') then
          q     <= '0';
          q_bar <= '1';
          
       elsif (en = '1') then
          q     <= d;
          q_bar <= not d;
       end if;
     end process p_d_latch;
```
# D latch VHDL TESTBENCH - process

```vhdl
     p_d_latch :process
      begin
          report "Stimulus process started" severity note;

          s_en   <= '0'; 
          s_d    <= '0';
          s_arst <= '0';
          wait for 26 ns;

          s_d    <= '1'; 
          wait for 14 ns;
          s_d    <= '0';
          wait for 24 ns;
          s_d    <= '1';
          wait for 22 ns;
          s_d    <= '0';
          wait for 36 ns;

          -- Test enable
          s_en <= '1';    -- Enable activated 
          wait for 14 ns;
          s_d  <= '1';
          wait for 14 ns;
          s_d  <= '0';
          wait for 24 ns;
          s_d  <= '1';
          wait for 22 ns;
          s_d  <= '0';
          wait for 36 ns;
          s_en <= '0';    -- Enable deactivated 
          wait for 56 ns;

          s_d    <= '1'; 
          wait for 14 ns;
          s_d    <= '0'; 
          wait for 24 ns;
          s_d    <= '1'; 
          wait for 22 ns;
          s_d    <= '0'; 
          wait for 36 ns;

          -- Test reset
          s_en   <= '1';
          wait for 14 ns;
          s_d    <= '1';
          wait for 14 ns;
          s_arst <= '1';   -- Reset activated
          wait for 24 ns;
          s_d    <= '0';
          wait for 36 ns;
          s_d  <= '1';
          wait for 22 ns;
          s_d <= '0';
          wait for 36 ns;
          s_arst <= '0';   -- Reset deactivated
          wait for 56 ns;
          s_d <= '1';
          wait for 14 ns;
          s_d <= '0';
          wait for 24 ns;
          s_d <= '1';
          wait for 22 ns;
          s_d <= '0';
          wait for 36  ns;

          report "Stimulus process finished" severity note;
          wait;
       end process p_d_latch;
```

![SIMULACIA](Images/simulacia1.png)


# Flip-flops VHDL SOURCE - p_d_ff_arst process

```vhdl
  p_d_ff_arst :process (clk,arst)
     begin
       if (arst = '1') then
          q     <= '0';
          q_bar <= '1';
          
       elsif rising_edge (clk) then
          q     <= d;
          q_bar <= not d;
       end if;
     end process p_d_ff_arst;
```
![SIMULACIA](Images/simulacia2.png)

# Flip-flops VHDL SOURCE - p_d_ff_rst process

```vhdl

```
![SIMULACIA](Images/simulacia3.png)

# Flip-flops VHDL SOURCE - p_jk_ff_rst process

```vhdl
 p_jk_ff_rst :process (clk,rst)
    begin
       if rising_edge (clk) then
         if(rst = '1') then 
           s_q     <= '1';
           s_q_bar <= '1'; 
      else
       if (j ='0' and k= '0') then
           s_q     <= s_q;
           s_q_bar <= s_q_bar;
       elsif (j ='0' and k= '1') then
           s_q     <= '0';
           s_q_bar <= '0';
       elsif (j ='1' and k= '0') then
           s_q     <= '1';
           s_q_bar <= '1';
       else
           s_q      <= not s_q;
           s_q_bar  <= not s_q_bar;
         end if;
       end if;
     end if;
     end process p_jk_ff_rst;
     
     q     <= s_q;
     q_bar <= s_q_bar;
```

![SIMULACIA](Images/simulacia4.png)

# Flip-flops VHDL SOURCE - p_t_ff_rst process

```vhdl

```

![SIMULACIA](Images/simulacia5.png)