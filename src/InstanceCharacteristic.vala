public class InstanceCharacteristic : Object {
    public int id             { get; private set; }
    public int instance_id    { get; private set; }
    public string name        { get; private set; }
    public string description { get; private set; }
    public float weight       { get; private set; }
    public float length       { get; private set; }
    public float width        { get; private set; }
    public float height       { get; private set; }

    public InstanceCharacteristic () {}

    public string get_info () {
        return @"id:   $(id) " +
               @"instance_id: $(instance_id) " + 
               @"name: $(name) " +
               @"description: $(description)" +
               @"weight:   $(weight) " +
               @"length: $(length) " + 
               @"width: $(width) " +
               @"height: $(height)";
    }

    public void set_up_id (int id) {
        this.id = id;
    }

    public void set_up_instance_id (int instance_id) {
        this.instance_id = instance_id;
    }

    public void set_up_name (string name) {
        this.name = name;
    }

    public void set_up_description (string description) {
        this.description = description;
    }

    public void set_up_weight (float weight) {
        this.weight = weight;
    }

    public void set_up_length (float length) {
        this.length = length;
    }

    public void set_up_width (float width) {
        this.width = width;
    }

    public void set_up_height (float height) {
        this.height = height;
    }
}