using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace CounterApp;

public sealed class CounterModel : INotifyPropertyChanged
{
    private int _count;

    public int Count
    {
        get => _count;
        private set
        {
            if (_count == value)
            {
                return;
            }

            _count = value;
            OnPropertyChanged();
        }
    }

    public event PropertyChangedEventHandler? PropertyChanged;

    public void Increment() => Count++;

    private void OnPropertyChanged([CallerMemberName] string? propertyName = null)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
}
