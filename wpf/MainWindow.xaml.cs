using System.Windows;

namespace CounterApp;

public partial class MainWindow : Window
{
    private readonly CounterModel _model = new();

    public MainWindow()
    {
        InitializeComponent();
        DataContext = _model;
    }

    private void IncrementButton_Click(object sender, RoutedEventArgs e)
    {
        _model.Increment();
    }
}
