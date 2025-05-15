`timescale 1ns / 1ps
module nrz4(
    input logic [3:0] D_i,
    input logic mod,
    output logic [3:0] D_o
    );
    logic last_bit;
    
    always @(*) begin
    last_bit <= 1'b0;
    D_o <= 4'b0000;
    
       if(!mod)
        for(int i=0; i < 4; i++) begin
            if (D_i[i])
                    last_bit = ~last_bit;
            D_o[i] = last_bit;
        end         
    else
        for (int i = 0; i < 4; i++) begin
            if (D_i[i] != last_bit)
                D_o[i] = 1'b1;
            else
                D_o[i] = 1'b0;
                last_bit = D_i[i]; 
    end
    end

endmodule

