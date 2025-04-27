library my_library;

int largest_el(List<int> list){
    int max = list[0];
    for (int number in list){
        if (number > max) max = number;
    }
    return max;
}
int smallest_el(List<int> list){
    int min = list[0];
    for (int number in list){
        if (number < min) min= number;
    }
    return min;
}

double avg(List<int> list){
    double average = 0;
    for (int number in list){
        average += number;
    }
    return average / list.length;
}