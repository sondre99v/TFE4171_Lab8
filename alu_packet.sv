// Data_t struct
typedef struct {
    rand bit [7:0] a;
    rand bit [7:0] b;
    rand bit [2:0] op;
} data_t;


class alu_data;
    rand data_t data;

    task get(ref bit [7:0] a, ref bit [7:0] b, ref bit [2:0] op);
        a = data.a;
        b = data.b;
        op = data.op;
    endtask


    constraint c1 { data.a inside {[0:127]}; }
    constraint c2 { data.b inside {[0:255]}; }
    constraint c3 { data.op inside {[0:6]}; }

endclass: alu_data

