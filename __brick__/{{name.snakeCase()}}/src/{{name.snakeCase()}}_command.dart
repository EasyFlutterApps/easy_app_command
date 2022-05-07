import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:mason_logger/mason_logger.dart';

/// Command for the module.
class {{name.pascalCase()}}Command extends Command<int> {
  /// Constructor.
  /// {@macro easy_app_cli}
  {{name.pascalCase()}}Command({
    Logger? logger,
  })  : _logger = logger ?? Logger(),
        super();

  final Logger _logger;

  @override
  String get description => '{{description}}';

  @override
  String get name => '{{name.snakeCase()}}';

  @override
  // TODO: implement name
  /// Sample usage: cli $name [template]
  String get invocation => throw UnimplementedError();

  @override
  // TODO: implement name
  String get summary => '$invocation\n$description';

  /// [ArgResults] which can be overridden for testing.
  ArgResults? argResultOverrides;

  ArgResults get _argResults => argResultOverrides ?? argResults!;

  @override
  Future<int> run() async {
    _logger.info('Running command: $name ${_argResults.arguments}');

    return ExitCode.usage.code;
  }
}
