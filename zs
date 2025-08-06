import os
import json

TASKS_FILE = "tasks.json"

class Task:
    def __init__(self, description, completed=False):
        self.description = description
        self.completed = completed

    def to_dict(self):
        return {
            "description": self.description,
            "completed": self.completed
        }

    @staticmethod
    def from_dict(data):
        return Task(data["description"], data["completed"])

class ToDoList:
    def __init__(self):
        self.tasks = []
        self.load_tasks()

    def load_tasks(self):
        if os.path.exists(TASKS_FILE):
            with open(TASKS_FILE, "r") as f:
                data = json.load(f)
                self.tasks = [Task.from_dict(t) for t in data]

    def save_tasks(self):
        with open(TASKS_FILE, "w") as f:
            json.dump([t.to_dict() for t in self.tasks], f, indent=2)

    def add_task(self, description):
        task = Task(description)
        self.tasks.append(task)
        print(f"Added task: '{description}'")

    def list_tasks(self):
        if not self.tasks:
            print("No tasks in the list.")
            return
        print("\nYour To-Do List:")
        for i, task in enumerate(self.tasks, start=1):
            status = "✓" if task.completed else "✗"
            print(f"{i}. [{status}] {task.description}")
        print()

    def complete_task(self, index):
        if 0 <= index < len(self.tasks):
            self.tasks[index].completed = True
            print(f"Marked task {index + 1} as completed.")
        else:
            print("Invalid task number.")

    def delete_task(self, index):
        if 0 <= index < len(self.tasks):
            removed = self.tasks.pop(index)
            print(f"Deleted task: '{removed.description}'")
        else:
            print("Invalid task number.")

    def clear_tasks(self):
        self.tasks.clear()
        print("All tasks cleared.")

def print_menu():
    print("\n=== To-Do List Menu ===")
    print("1. List tasks")
    print("2. Add task")
    print("3. Complete task")
    print("4. Delete task")
    print("5. Clear all tasks")
    print("6. Exit")
    print("=======================\n")

def main():
    todo = ToDoList()
    while True:
        print_menu()
        choice = input("Choose an option (1-6): ")

        if choice == "1":
            todo.list_tasks()
        elif choice == "2":
            desc = input("Enter task description: ").strip()
            if desc:
                todo.add_task(desc)
            else:
                print("Description cannot be empty.")
        elif choice == "3":
            todo.list_tasks()
            try:
                index = int(input("Enter task number to complete: ")) - 1
                todo.complete_task(index)
            except ValueError:
                print("Invalid input.")
        elif choice == "4":
            todo.list_tasks()
            try:
                index = int(input("Enter task number to delete: ")) - 1
                todo.delete_task(index)
            except ValueError:
                print("Invalid input.")
        elif choice == "5":
            confirm = input("Are you sure you want to clear all tasks? (y/n): ")
            if confirm.lower() == 'y':
                todo.clear_tasks()
        elif choice == "6":
            print("Saving tasks and exiting...")
            todo.save_tasks()
            break
        else:
            print("Invalid choice. Please enter a number between 1 and 6.")

if __name__ == "__main__":
    main()
sdgvhgsda

sznbcjnx











sahjdsahj







asnbsdahj
sadnbjnasdb


import os
import json

TASKS_FILE = "tasks.json"

class Task:
    def __init__(self, description, completed=False):
        self.description = description
        self.completed = completed

    def to_dict(self):
        return {
            "description": self.description,
            "completed": self.completed
        }

    @staticmethod
    def from_dict(data):
        return Task(data["description"], data["completed"])

class ToDoList:
    def __init__(self):
        self.tasks = []
        self.load_tasks()

    def load_tasks(self):
        if os.path.exists(TASKS_FILE):
            with open(TASKS_FILE, "r") as f:
                data = json.load(f)
                self.tasks = [Task.from_dict(t) for t in data]

    def save_tasks(self):
        with open(TASKS_FILE, "w") as f:
            json.dump([t.to_dict() for t in self.tasks], f, indent=2)

    def add_task(self, description):
        task = Task(description)
        self.tasks.append(task)
        print(f"Added task: '{description}'")

    def list_tasks(self):
        if not self.tasks:
            print("No tasks in the list.")
            return
        print("\nYour To-Do List:")
        for i, task in enumerate(self.tasks, start=1):
            status = "✓" if task.completed else "✗"
            print(f"{i}. [{status}] {task.description}")
        print()

    def complete_task(self, index):
        if 0 <= index < len(self.tasks):
            self.tasks[index].completed = True
            print(f"Marked task {index + 1} as completed.")
        else:
            print("Invalid task number.")

    def delete_task(self, index):
        if 0 <= index < len(self.tasks):
            removed = self.tasks.pop(index)
            print(f"Deleted task: '{removed.description}'")
        else:
            print("Invalid task number.")

    def clear_tasks(self):
        self.tasks.clear()
        print("All tasks cleared.")

def print_menu():
    print("\n=== To-Do List Menu ===")
    print("1. List tasks")
    print("2. Add task")
    print("3. Complete task")
    print("4. Delete task")
    print("5. Clear all tasks")
    print("6. Exit")
    print("=======================\n")

def main():
    todo = ToDoList()
    while True:
        print_menu()
        choice = input("Choose an option (1-6): ")

        if choice == "1":
            todo.list_tasks()
        elif choice == "2":
            desc = input("Enter task description: ").strip()
            if desc:
                todo.add_task(desc)
            else:
                print("Description cannot be empty.")
        elif choice == "3":
            todo.list_tasks()
            try:
                index = int(input("Enter task number to complete: ")) - 1
                todo.complete_task(index)
            except ValueError:
                print("Invalid input.")
        elif choice == "4":
            todo.list_tasks()
            try:
                index = int(input("Enter task number to delete: ")) - 1
                todo.delete_task(index)
            except ValueError:
                print("Invalid input.")
        elif choice == "5":
            confirm = input("Are you sure you want to clear all tasks? (y/n): ")
            if confirm.lower() == 'y':
                todo.clear_tasks()
        elif choice == "6":
            print("Saving tasks and exiting...")
            todo.save_tasks()
            break
        else:
            print("Invalid choice. Please enter a number between 1 and 6.")

if __name__ == "__main__":
    main()

