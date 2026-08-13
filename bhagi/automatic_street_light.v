// automatic_street_light.v
// Automatic Street Light Controller
//
// sensor = 1 -> Darkness detected -> Street light ON
// sensor = 0 -> Daylight detected -> Street light OFF

module automatic_street_light (
    input  wire clk,
    input  wire reset,
    input  wire sensor,
    output reg  street_light
);

always @(posedge clk or posedge reset) begin
    if (reset)
        street_light <= 1'b0;
    else if (sensor)
        street_light <= 1'b1;
    else
        street_light <= 1'b0;
end

endmodule