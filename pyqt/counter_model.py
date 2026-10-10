from PyQt6.QtCore import QObject, pyqtSignal


class CounterModel(QObject):
    count_changed = pyqtSignal(int)

    def __init__(self):
        super().__init__()
        self._count = 0

    @property
    def count(self):
        return self._count

    def increment(self):
        self._count += 1
        self.count_changed.emit(self._count)
