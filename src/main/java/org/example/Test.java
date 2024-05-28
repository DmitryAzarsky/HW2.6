package org.example;

import java.util.List;

public class Test {
    public static void main(String[] args) {
        List<YoungestEldestWorkers> list = DatabaseQueryService.findYoungestEldestWorkers();
    }
}
