from PyQt5 import uic
from PyQt5.QtGui import QWindow
from StudentClassesDialog import StudentClassesDialog
from TeacherStudentsDialog import TeacherStudentsDialog

class MainSchoolWindow(QWindow):
    """
    The main application window.
    """
    
    def __init__(self):
        """
        Load the UI and initialize its components.
        """
        super().__init__()
        
        self.ui = uic.loadUi('main_school_window.ui')
        self.ui.show();
        
        # Student classes dialog.
        self._student_classes_dialog = StudentClassesDialog()
        self.ui.student_button.clicked.connect(self._show_student_classes_dialog)
        
        # Teacher students dialog.
        self._teacher_students_dialog = TeacherStudentsDialog()
        self.ui.teacher_button.clicked.connect(self._show_teacher_students_dialog)

    def _show_student_classes_dialog(self):
        """
        Show the student's classes dialog.
        """
        self._student_classes_dialog.show_dialog()

    def _show_teacher_students_dialog(self):
        """
        Show the teacher's students dialog.
        """
        self._teacher_students_dialog.show_dialog()
