import logo from './logo.svg';
import './App.css';
import { BrowserRouter, Route, Switch, Link } from 'react-router-dom'
import Fib from './Fib'
import OtherPage from './OtherPage'

function App() {
  return (
    <BrowserRouter>
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <Link to="/">Home</Link>
        <Link to="/otherpage">Other Page</Link>
      <div>
        <Switch>
          <Route exact path="/" component={Fib} />
          <Route path="/otherpage" component={OtherPage} />
        </Switch>
      </div>
      </header>
    </div>
    </BrowserRouter>
  );
}

export default App;
