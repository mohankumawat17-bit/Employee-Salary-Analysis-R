# Employee Salary Analysis Project

# Step 1: Create dataset
id <- c(1,2,3,4,5)
name <- c("Amit","Ravi","Neha","Priya","Rahul")
department <- c("IT","HR","IT","Finance","HR")
salary <- c(40000,30000,50000,45000,35000)

employee <- data.frame(id,name,department,salary)

# View dataset
print(employee)

# Step 2: Basic analysis

# Average salary
avg_salary <- mean(employee$salary)
print(avg_salary)

# Maximum salary
max_salary <- max(employee$salary)
print(max_salary)

# Minimum salary
min_salary <- min(employee$salary)
print(min_salary)

# Step 3: Department wise count
dept_count <- table(employee$department)
print(dept_count)

# Step 4: Filter IT department
it_employees <- employee[employee$department=="IT", ]
print(it_employees)

# Step 5: Bar chart
barplot(employee$salary,
        names.arg=employee$name,
        col="blue",
        main="Employee Salary Analysis",
        xlab="Employee Name",
        ylab="Salary")

# Step 6: Save dataset
write.csv(employee, "employee_data.csv", row.names = FALSE)