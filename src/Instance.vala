public class LPS.Instance : Object {
    public int id          { get; private set; }
    public string name     { get; private set; }
    public int category_id { get; private set; }
    public int reader_id   { get; private set; }

    public Instance () {}

    public string get_info () {
        return @"id:   $(id) " +
               @"name: $(name) " + 
               @"category_id: $(category_id) " +
               @"reader_id: $(reader_id)";
    }

    public void set_up_id (int id) {
        this.id = id;
    }

    public void set_up_name (string name) {
        this.name = name;
    }

    public void set_up_category_id (int category_id) {
        this.category_id = category_id;
    }

    public void set_up_reader_id (int reader_id) {
        this.reader_id = reader_id;
    }
}