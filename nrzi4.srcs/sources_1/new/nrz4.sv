module nrz4(
    input  logic [3:0] D_i,
    input  logic       mod,
    output logic [3:0] D_o
);
    logic last_bit;

    always_comb begin
        last_bit = 1'b0;
        case (mod)
            1'b0: begin // NRZ-I
                if (D_i[0]) last_bit = ~last_bit;
                D_o[0] = last_bit;

                if (D_i[1]) last_bit = ~last_bit;
                D_o[1] = last_bit;

                if (D_i[2]) last_bit = ~last_bit;
                D_o[2] = last_bit;

                if (D_i[3]) last_bit = ~last_bit;
                D_o[3] = last_bit;
            end

            1'b1: begin // Decodare NRZ-I
                D_o[0] = (D_i[0] != last_bit);
                last_bit = D_i[0];

                D_o[1] = (D_i[1] != last_bit);
                last_bit = D_i[1];

                D_o[2] = (D_i[2] != last_bit);
                last_bit = D_i[2];

                D_o[3] = (D_i[3] != last_bit);
                last_bit = D_i[3];
            end
        endcase
    end

endmodule