import sys

from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import QApplication, QLabel, QPushButton, QVBoxLayout, QWidget

from counter_model import CounterModel


class CounterView(QWidget):
    def __init__(self, model):
        super().__init__()
        self.model = model
        self.setWindowTitle("PyQt Counter")

        self.label = QLabel(str(model.count))
        self.label.setObjectName("countLabel")
        self.label.setAlignment(Qt.AlignmentFlag.AlignCenter)

        self.button = QPushButton("Increment")
        self.button.clicked.connect(self.model.increment)
        self.model.count_changed.connect(self.update_count)

        layout = QVBoxLayout()
        layout.addWidget(self.label)
        layout.addWidget(self.button)
        self.setLayout(layout)

    def update_count(self, count):
        self.label.setText(str(count))


if __name__ == "__main__":
    app = QApplication(sys.argv)
    model = CounterModel()
    view = CounterView(model)
    view.show()
    sys.exit(app.exec())
