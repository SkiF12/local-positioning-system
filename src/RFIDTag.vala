public class RFIDTag : Object {
    public int id             { get; private set; }
    public int pos_x          { get; private set; }
    public int pos_y          { get; private set; }
    public string unique_code { get; private set; }

    public RFIDTag () {}

    public string get_info () {
        return @"id:   $(id) " +
               @"pos_x: $(pos_x) " + 
               @"pos_y: $(pos_y) " +
               @"unique_code: $(unique_code)";
    }

    public void set_up_id (int id) {
        this.id = id;
    }
    
    public void set_up_posiotion (int x, int y) {
        pos_x = x;
        pos_y = y;
    }

    public void set_up_unique_code (string unique_code) {
        this.unique_code = unique_code;
    }

}