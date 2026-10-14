using Prometheus;

Counter httpRequestCounter = Metrics.CreateCounter("httpRequsrCounter", "измеерение http запросов");
var metricServer = new MetricServer(4321);
metricServer.Start();

while (true)
{
    Thread.Sleep(1000);
    httpRequestCounter.Inc(12);
}

Console.ReadLine();