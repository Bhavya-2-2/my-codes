import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler

class LogHandler(FileSystemEventHandler):
    def on_modified(self, event):
        if event.src_path.endswith("logfile.log"):  # Replace with your log file's name
            with open(event.src_path, "r") as file:
                lines = file.readlines()
                print("New log entries:")
                print(lines[-10:])  # Print the last 10 lines for example

if __name__ == "__main__":
    path_to_monitor = "."  # Monitor the current directory
    event_handler = LogHandler()
    observer = Observer()
    observer.schedule(event_handler, path=path_to_monitor, recursive=False)

    print("Monitoring logs...")
    observer.start()

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()

    observer.join()
