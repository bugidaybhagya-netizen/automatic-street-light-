// tb_automatic_street_light.v

`timescale 1ns/1ps

module tb_automatic_street_light;

    reg clk;
    reg reset;
    reg sensor;
    wire street_light;

    automatic_street_light uut (
        .clk(clk),
        .reset(reset),
        .sensor(sensor),
        .street_light(street_light)
    );

    // 10 ns clock
    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | Reset=%b | Sensor=%b | Street Light=%b",
                 $time, reset, sensor, street_light);

        clk = 0;
        reset = 1;
        sensor = 0;

        #10;
        reset = 0;

        // Daylight
        sensor = 0;
        #20;

        // Darkness
        sensor = 1;
        #20;

        // Daylight again
        sensor = 0;
        #20;

        // Darkness again
        sensor = 1;
        #20;

        $finish;
    end

endmodule