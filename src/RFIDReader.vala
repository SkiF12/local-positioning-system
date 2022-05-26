public class RFIDReader : Object {
    public int id            { get; private set; }
    public string model_info { get; private set; }

    public RFIDReader () {}
    
    public string get_info () {
        return @"id: $(id) " +
               @"model_info: $(model_info)";
    }

    public void set_up_id (int id) {
        this.id = id;
    }

    public void set_up_model_info (string model_info) {
        this.model_info = model_info;
    }
}