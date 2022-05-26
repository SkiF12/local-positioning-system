public class Category : Object {
    public int id       { get; private set; }
    public string title { get; private set; }

    public Category () {}

    public string get_info () {
        return @"id: $(id) " + 
               @"title: $(title)";
    }

    public void set_up_id (int id) {
        this.id = id;
    }

    public void set_up_title (string title) {
        this.title = title;
    }
}