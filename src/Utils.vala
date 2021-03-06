namespace LPS.Utils {

    const int grid_step = 20;

    public struct Point {
        int x;
        int y;
    }


    // culculates location of the instance based on tags nearby
    public Point find_instance (ref LPS.Instance instance, ref LPS.RFIDTag[] tags_in_range) {
    
        int vertex_counter = 0;
        int summ_x         = 0;
        int summ_y         = 0;
        int position_x     = 0;
        int position_y     = 0;

        

        position_x = summ_x / vertex_counter;
        position_y = summ_y / vertex_counter;

        return Point () { x = position_x, y = position_y };
    }
}