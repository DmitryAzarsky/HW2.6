package org.example;

import java.time.LocalDate;

public class YoungestEldestWorkers {
    public String name;
    public LocalDate birthday;
    public AgeOfWorker ageOfWorker;
    public YoungestEldestWorkers(String name, String birthdayString, String ageOfWorker) {
        this.name = name;
        this.birthday = LocalDate.parse(birthdayString);
        this.ageOfWorker = AgeOfWorker.valueOf(ageOfWorker);
    }
}
