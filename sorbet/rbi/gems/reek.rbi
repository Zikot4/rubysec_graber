# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/reek/all/reek.rbi
#
# reek-5.4.0
module Reek
end
module Reek::Version
end
module Reek::DocumentationLink
  def build(subject); end
  def name_to_param(name); end
  def self.build(subject); end
  def self.name_to_param(name); end
end
class Reek::SmellWarning
  def <=>(other); end
  def base_hash; end
  def base_message; end
  def context; end
  def eql?(other); end
  def explanatory_link; end
  def hash; end
  def identifying_values; end
  def initialize(smell_detector, lines:, message:, source:, context: nil, parameters: nil); end
  def lines; end
  def message; end
  def parameters; end
  def smell_class; end
  def smell_detector; end
  def smell_type(*args, &block); end
  def source; end
  def to_hash; end
  def yaml_hash; end
  extend Forwardable
  include Comparable
end
class Reek::SmellConfiguration
  def enabled?; end
  def initialize(hash); end
  def merge(new_options); end
  def options; end
  def overrides_for(context); end
  def value(key, context); end
end
class Reek::Overrides
  def for_context(context); end
  def hash; end
  def initialize(hash); end
end
module Reek::SmellDetectors
end
class Reek::SmellDetectors::BaseDetector
  def config; end
  def config_for(ctx); end
  def context; end
  def enabled?; end
  def exception?; end
  def expression; end
  def initialize(configuration: nil, context: nil); end
  def run; end
  def self.configuration_keys; end
  def self.contexts; end
  def self.default_config; end
  def self.descendants; end
  def self.inherited(subclass); end
  def self.smell_type; end
  def self.to_detector(detector_name); end
  def self.todo_configuration_for(smells); end
  def self.valid_detector?(detector); end
  def smell_type; end
  def smell_warning(**options); end
  def source_line; end
  def value(key, ctx); end
end
module Reek::Errors
end
class Reek::Errors::BaseError < RuntimeError
  def long_message; end
end
class Reek::Errors::BadDetectorInCommentError < Reek::Errors::BaseError
  def initialize(detector_name:, source:, line:, original_comment:); end
end
class Reek::Errors::BadDetectorConfigurationKeyInCommentError < Reek::Errors::BaseError
  def initialize(detector_name:, offensive_keys:, source:, line:, original_comment:); end
end
class Reek::Errors::GarbageDetectorConfigurationInCommentError < Reek::Errors::BaseError
  def initialize(detector_name:, source:, line:, original_comment:); end
end
class Reek::CodeComment
  def config; end
  def descriptive?; end
  def initialize(comment:, line: nil, source: nil); end
  def line; end
  def original_comment; end
  def sanitized_comment; end
  def source; end
end
class Reek::CodeComment::CodeCommentValidator
  def configuration_keys_difference; end
  def detector_class; end
  def detector_name; end
  def escalate_bad_detector; end
  def escalate_bad_detector_configuration; end
  def escalate_unknown_configuration_key; end
  def given_configuration_keys; end
  def given_keys_legit?; end
  def initialize(detector_name:, original_comment:, line:, source:, options: nil); end
  def line; end
  def options; end
  def original_comment; end
  def parsed_options; end
  def source; end
  def valid_detector_keys; end
  def validate; end
end
module Reek::AST
end
class Reek::AST::ObjectRefs
  def initialize; end
  def most_popular; end
  def record_reference(name:, line: nil); end
  def references_to(name); end
  def refs; end
  def self_is_max?; end
end
module Reek::CLI
end
module Reek::CLI::Silencer
  def self.silently; end
  def self.without_warnings; end
  def silently; end
  def without_warnings; end
end
class Reek::AST::Node < Parser::AST::Node
  def comments; end
  def condition; end
  def contains_nested_node?(target_type); end
  def each_node(target_types, ignoring = nil, &blk); end
  def each_sexp; end
  def format_to_ruby; end
  def full_comment; end
  def initialize(type, children = nil, options = nil); end
  def leading_comment; end
  def length; end
  def line; end
  def look_for(target_types, ignoring, &blk); end
  def look_for_recurse(target_types, ignoring, &blk); end
  def name; end
  def source; end
  def statements; end
end
module Reek::Context
end
class Reek::Context::StatementCounter
  def decrease_by(number); end
  def increase_by(sexp); end
  def initialize; end
  def value; end
  def value=(arg0); end
end
class Reek::Context::CodeContext
  def append_child_context(child); end
  def apply_current_visibility(_current_visibility); end
  def children; end
  def config_for(detector_class); end
  def configuration_via_code_commment; end
  def each(&block); end
  def exp; end
  def full_comment; end
  def full_name; end
  def initialize(exp); end
  def instance_method?; end
  def local_nodes(type, ignored = nil, &blk); end
  def matches?(candidates); end
  def name(*args, &block); end
  def number_of_statements; end
  def parent; end
  def parent_config_for(detector_class); end
  def record_call_to(exp); end
  def record_use_of_self; end
  def refs; end
  def register_with_parent(parent); end
  def singleton_method?; end
  def statement_counter; end
  def type(*args, &block); end
  extend Forwardable
  include Enumerable
end
class Reek::Context::AttributeContext < Reek::Context::CodeContext
  def apply_current_visibility(current_visibility); end
  def full_comment; end
  def initialize(exp, send_expression); end
  def instance_method?; end
  def send_expression; end
  def visibility; end
  def visibility=(arg0); end
end
class Reek::Context::MethodContext < Reek::Context::CodeContext
  def apply_current_visibility(current_visibility); end
  def default_assignments; end
  def full_comment; end
  def initialize(exp, parent_exp); end
  def instance_method?; end
  def method_context_class; end
  def module_function?; end
  def non_public_visibility?; end
  def parent_exp; end
  def references_self?; end
  def refs; end
  def singleton_method?; end
  def unused_params; end
  def uses_param?(param); end
  def uses_super_with_implicit_arguments?; end
  def visibility; end
  def visibility=(arg0); end
end
class Reek::Context::VisibilityTracker
  def apply_visibility(context); end
  def initialize; end
  def track_singleton_visibility(children:, visibility:, names:); end
  def track_visibility(children:, visibility:, names:); end
  def tracked_visibility; end
  def tracked_visibility=(arg0); end
end
class Reek::Context::ModuleContext < Reek::Context::CodeContext
  def append_child_context(child); end
  def attribute_context_class; end
  def defined_instance_methods(visibility: nil); end
  def descriptively_commented?; end
  def initialize(exp); end
  def instance_method_calls; end
  def instance_method_children; end
  def method_context_class; end
  def namespace_module?; end
  def node_instance_methods; end
  def singleton_method_children; end
  def track_visibility(visibility, names); end
  def visibility_tracker; end
end
class Reek::Context::ClassContext < Reek::Context::ModuleContext
end
class Reek::Context::SingletonMethodContext < Reek::Context::MethodContext
  def apply_current_visibility(current_visibility); end
  def defined_as_instance_method?; end
  def instance_method?; end
  def module_function?; end
  def singleton_method?; end
end
class Reek::Context::GhostContext < Reek::Context::ModuleContext
  def append_child_context(child); end
  def attribute_context_class; end
  def children; end
  def method_context_class; end
  def record_use_of_self; end
  def register_with_parent(parent); end
  def statement_counter; end
  def track_visibility(visibility, names); end
end
class Reek::Context::RootContext < Reek::Context::CodeContext
  def full_name; end
  def method_context_class; end
  def type; end
end
class Reek::Context::SendContext < Reek::Context::CodeContext
  def initialize(exp, name); end
  def name; end
end
class Reek::Context::SingletonAttributeContext < Reek::Context::AttributeContext
  def instance_method?; end
end
class Reek::ContextBuilder
  def append_new_context(klass, *args); end
  def build(exp, parent_exp = nil); end
  def context_processor_exists?(name); end
  def context_tree; end
  def current_context; end
  def current_context=(arg0); end
  def decrease_statement_count; end
  def exp; end
  def handle_send_for_methods(exp); end
  def handle_send_for_modules(exp); end
  def increase_statement_count_by(sexp); end
  def initialize(syntax_tree); end
  def inside_new_context(klass, *args); end
  def process(exp); end
  def process_begin(exp, _parent); end
  def process_block(exp, _parent); end
  def process_case(exp, _parent); end
  def process_casgn(exp, parent); end
  def process_class(exp, _parent); end
  def process_def(exp, parent); end
  def process_defs(exp, parent); end
  def process_for(exp, _parent); end
  def process_if(exp, _parent); end
  def process_ivar(exp, _parent); end
  def process_ivasgn(exp, _parent); end
  def process_kwbegin(exp, _parent); end
  def process_module(exp, _parent); end
  def process_op_asgn(exp, _parent); end
  def process_resbody(exp, _parent); end
  def process_rescue(exp, _parent); end
  def process_sclass(exp, _parent); end
  def process_self(_exp, _parent); end
  def process_send(exp, _parent); end
  def process_super(exp, _parent); end
  def process_until(exp, _parent); end
  def process_when(exp, _parent); end
  def process_while(exp, _parent); end
  def process_zsuper(_exp, _parent); end
  def register_attributes(exp); end
end
class Reek::SmellDetectors::Attribute < Reek::SmellDetectors::BaseDetector
  def attributes_in_context; end
  def self.contexts; end
  def sniff; end
end
class Reek::SmellDetectors::BooleanParameter < Reek::SmellDetectors::BaseDetector
  def sniff; end
end
class Reek::SmellDetectors::ClassVariable < Reek::SmellDetectors::BaseDetector
  def class_variables_in_context; end
  def self.contexts; end
  def sniff; end
end
module Reek::SmellDetectors::ControlParameterHelpers
end
class Reek::SmellDetectors::ControlParameterHelpers::Candidate
  def initialize(parameter, occurences); end
  def lines; end
  def name; end
  def occurences; end
  def parameter; end
  def smells?; end
end
class Reek::SmellDetectors::ControlParameterHelpers::CallInConditionFinder
  def call_involving_param?(call_node); end
  def comparison_call?(call_node); end
  def initialize(node, parameter); end
  def node; end
  def parameter; end
  def regular_call_involving_param?(call_node); end
  def uses_param_in_call_in_condition?; end
end
class Reek::SmellDetectors::ControlParameterHelpers::ControlParameterFinder
  def conditional_nodes; end
  def find_matches; end
  def initialize(node, parameter); end
  def legitimate_uses?; end
  def nested_finders; end
  def node; end
  def parameter; end
  def parameter_used_in_body?; end
  def uses_of_param_in_condition; end
end
class Reek::SmellDetectors::ControlParameter < Reek::SmellDetectors::BaseDetector
  def control_parameters; end
  def find_matches(parameter); end
  def potential_parameters; end
  def sniff; end
end
class Reek::SmellDetectors::DataClump < Reek::SmellDetectors::BaseDetector
  def max_copies; end
  def min_clump_size; end
  def self.contexts; end
  def self.default_config; end
  def self.print_clump(clump); end
  def sniff; end
end
class Reek::MethodGroup
  def candidate_clumps; end
  def candidate_methods; end
  def clumps; end
  def common_argument_names_for(methods); end
  def initialize(ctx, min_clump_size, max_copies); end
  def max_copies; end
  def methods_containing_clump(clump); end
  def min_clump_size; end
end
class Reek::CandidateMethod
  def arg_names; end
  def defn; end
  def initialize(defn_node); end
  def line(*args, &block); end
  def name(*args, &block); end
  extend Forwardable
end
class Reek::SmellDetectors::DuplicateMethodCall < Reek::SmellDetectors::BaseDetector
  def allow_calls; end
  def max_allowed_calls; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::DuplicateMethodCall::FoundCall
  def call; end
  def call_node; end
  def initialize(call_node); end
  def lines; end
  def occurences; end
  def occurs; end
  def record(occurence); end
end
class Reek::SmellDetectors::DuplicateMethodCall::CallCollector
  def allow_calls; end
  def allow_calls?(method); end
  def calls; end
  def collect_calls(result); end
  def context; end
  def initialize(context, max_allowed_calls, allow_calls); end
  def max_allowed_calls; end
  def simple_method_call?(call_node); end
  def smelly_call?(found_call); end
  def smelly_calls; end
end
class Reek::SmellDetectors::FeatureEnvy < Reek::SmellDetectors::BaseDetector
  def envious_receivers; end
  def refs; end
  def sniff; end
end
class Reek::SmellDetectors::IrresponsibleModule < Reek::SmellDetectors::BaseDetector
  def descriptive_context?; end
  def self.contexts; end
  def sniff; end
end
class Reek::SmellDetectors::InstanceVariableAssumption < Reek::SmellDetectors::BaseDetector
  def build_smell_warning(assumption); end
  def method_expressions; end
  def self.contexts; end
  def sniff; end
  def variables_from_context; end
  def variables_from_initialize; end
end
class Reek::SmellDetectors::LongParameterList < Reek::SmellDetectors::BaseDetector
  def max_allowed_params; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::LongYieldList < Reek::SmellDetectors::BaseDetector
  def max_allowed_params; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::ManualDispatch < Reek::SmellDetectors::BaseDetector
  def sniff; end
end
class Reek::SmellDetectors::ModuleInitialize < Reek::SmellDetectors::BaseDetector
  def self.contexts; end
  def sniff; end
end
class Reek::SmellDetectors::NestedIterators < Reek::SmellDetectors::BaseDetector
  def find_candidates; end
  def find_violations; end
  def ignore_iterators; end
  def ignored_iterator?(exp); end
  def increment_depth(iterator, depth); end
  def max_allowed_nesting; end
  def scout(exp:, depth:); end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::NestedIterators::Iterator < Struct
  def depth; end
  def depth=(_); end
  def exp; end
  def exp=(_); end
  def line; end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Reek::SmellDetectors::NilCheck < Reek::SmellDetectors::BaseDetector
  def detect_nodes; end
  def sniff; end
end
class Reek::SmellDetectors::NilCheck::NodeFinder
  def detector; end
  def initialize(ctx, type, detector); end
  def nodes; end
  def smelly_nodes; end
end
module Reek::SmellDetectors::NilCheck::NilCallNodeDetector
  def comparison_call?(call); end
  def comparison_methods; end
  def detect(node); end
  def involves_nil?(call); end
  def nil_comparison?(call); end
  def nil_query?(call); end
  def self.comparison_call?(call); end
  def self.comparison_methods; end
  def self.detect(node); end
  def self.involves_nil?(call); end
  def self.nil_comparison?(call); end
  def self.nil_query?(call); end
end
module Reek::SmellDetectors::NilCheck::NilWhenNodeDetector
  def detect(node); end
  def self.detect(node); end
end
module Reek::SmellDetectors::NilCheck::SafeNavigationNodeDetector
  def detect(_node); end
  def self.detect(_node); end
end
class Reek::SmellDetectors::MissingSafeMethod < Reek::SmellDetectors::BaseDetector
  def ignore_method?(method_node); end
  def ignore_method_names; end
  def missing_safe_method?(method_sexp); end
  def self.contexts; end
  def sniff; end
  def version_without_bang_exists?(method_sexp); end
end
class Reek::SmellDetectors::RepeatedConditional < Reek::SmellDetectors::BaseDetector
  def conditional_counts; end
  def max_identical_ifs; end
  def self.contexts; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::SubclassedFromCoreClass < Reek::SmellDetectors::BaseDetector
  def build_smell_warning(ancestor_name); end
  def self.contexts; end
  def sniff; end
  def sniff_superclass(superclass_name); end
end
class Reek::SmellDetectors::TooManyInstanceVariables < Reek::SmellDetectors::BaseDetector
  def max_allowed_ivars; end
  def self.contexts; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::TooManyConstants < Reek::SmellDetectors::BaseDetector
  def build_smell_warning(count); end
  def max_allowed_constants; end
  def self.contexts; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::TooManyMethods < Reek::SmellDetectors::BaseDetector
  def max_allowed_methods; end
  def self.contexts; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::TooManyStatements < Reek::SmellDetectors::BaseDetector
  def max_allowed_statements; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::UncommunicativeMethodName < Reek::SmellDetectors::BaseDetector
  def accept_patterns; end
  def acceptable_name?(name); end
  def reject_patterns; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::UncommunicativeModuleName < Reek::SmellDetectors::BaseDetector
  def accept_patterns; end
  def acceptable_name?(module_name:, fully_qualified_name:); end
  def reject_patterns; end
  def self.contexts; end
  def self.default_config; end
  def sniff; end
end
class Reek::SmellDetectors::UncommunicativeParameterName < Reek::SmellDetectors::BaseDetector
  def accept_patterns; end
  def acceptable_name?(name); end
  def reject_patterns; end
  def self.default_config; end
  def sniff; end
  def uncommunicative_parameter?(parameter); end
end
class Reek::SmellDetectors::UncommunicativeVariableName < Reek::SmellDetectors::BaseDetector
  def accept_names; end
  def acceptable_name?(name); end
  def find_assignment_variable_names(accumulator); end
  def find_block_argument_variable_names(accumulator); end
  def record_variable_name(exp, symbol, accumulator); end
  def recursively_record_variable_names(accumulator, exp); end
  def reject_names; end
  def self.contexts; end
  def self.default_config; end
  def sniff; end
  def uncommunicative_variable_name?(name); end
  def variable_names; end
end
class Reek::SmellDetectors::UnusedParameters < Reek::SmellDetectors::BaseDetector
  def sniff; end
end
class Reek::SmellDetectors::UnusedPrivateMethod < Reek::SmellDetectors::BaseDetector
  def hits; end
  def ignore_method?(method); end
  def self.contexts; end
  def self.default_config; end
  def sniff; end
  def unused_private_methods; end
end
class Reek::SmellDetectors::UnusedPrivateMethod::Hit
  def initialize(context); end
  def line; end
  def name; end
end
class Reek::AST::ReferenceCollector
  def ast; end
  def explicit_self_calls; end
  def implicit_self_calls; end
  def initialize(ast); end
  def num_refs_to_self; end
end
class Reek::SmellDetectors::UtilityFunction < Reek::SmellDetectors::BaseDetector
  def ignore_method?; end
  def num_helper_methods; end
  def self.contexts; end
  def self.default_config; end
  def sniff; end
end
class Reek::Errors::ConfigFileError < Reek::Errors::BaseError
end
module Reek::Configuration
end
module Reek::Configuration::ConfigurationValidator
  def key_to_smell_detector(key); end
  def smell_type?(key); end
  def with_valid_directory(path); end
end
class Reek::Configuration::ConfigurationConverter
  def configuration; end
  def convert; end
  def convertible_attributes(detector_configuration); end
  def initialize(configuration); end
  def marked_as_regex?(value); end
  def strings_to_regexes_for_detectors; end
  def strings_to_regexes_for_directories; end
  def to_regex(value); end
  include Reek::Configuration::ConfigurationValidator
end
class Reek::Configuration::SchemaValidator
  def error_message(errors); end
  def initialize(configuration); end
  def validate; end
end
module Reek::Configuration::ConfigurationFileFinder
  def self.find(path: nil, current: nil, home: nil); end
  def self.find_and_load(path: nil); end
  def self.find_by_dir(start); end
  def self.find_in_dir(dir); end
  def self.load_from_file(path); end
end
module Reek::Configuration::DefaultDirective
  def add(detectors_configuration); end
  include Reek::Configuration::ConfigurationValidator
end
module Reek::Configuration::DirectoryDirectives
  def add(directory_config); end
  def best_match_for(source_base_dir); end
  def directive_for(source_via); end
  def error_message_for_invalid_smell_type(klass); end
  def glob_to_regexp(glob); end
  include Reek::Configuration::ConfigurationValidator
end
module Reek::Configuration::ExcludedPaths
  def add(paths); end
  include Reek::Configuration::ConfigurationValidator
end
class Reek::Configuration::AppConfiguration
  def default_directive; end
  def default_directive=(arg0); end
  def directive_for(source_via); end
  def directory_directives; end
  def directory_directives=(arg0); end
  def excluded_paths; end
  def excluded_paths=(arg0); end
  def initialize(values: nil); end
  def load_values(values); end
  def path_excluded?(path); end
  def self.default; end
  def self.from_default_path; end
  def self.from_hash(hash); end
  def self.from_path(path); end
  include Reek::Configuration::ConfigurationValidator
end
class Reek::DetectorRepository
  def configuration; end
  def configuration_for(klass); end
  def examine(context); end
  def initialize(smell_types: nil, configuration: nil); end
  def self.available_detector_names; end
  def self.eligible_smell_types(filter_by_smells = nil); end
  def self.smell_types; end
  def smell_detectors_for(type); end
  def smell_types; end
end
class Reek::Errors::IncomprehensibleSourceError < Reek::Errors::BaseError
  def initialize(origin:); end
  def long_message; end
end
class Reek::Errors::EncodingError < Reek::Errors::BaseError
  def initialize(origin:); end
  def long_message; end
end
class Reek::Errors::SyntaxError < Reek::Errors::BaseError
  def initialize(origin:); end
  def long_message; end
end
module Reek::AST::SexpExtensions
end
module Reek::AST::SexpExtensions::ArgNodeBase
  def anonymous_splat?; end
  def block?; end
  def components; end
  def marked_unused?; end
  def name; end
  def optional_argument?; end
  def plain_name; end
end
module Reek::AST::SexpExtensions::ArgNode
  include Reek::AST::SexpExtensions::ArgNodeBase
end
module Reek::AST::SexpExtensions::KwargNode
  include Reek::AST::SexpExtensions::ArgNodeBase
end
module Reek::AST::SexpExtensions::OptargNode
  def optional_argument?; end
  include Reek::AST::SexpExtensions::ArgNodeBase
end
module Reek::AST::SexpExtensions::KwoptargNode
  def optional_argument?; end
  include Reek::AST::SexpExtensions::ArgNodeBase
end
module Reek::AST::SexpExtensions::BlockargNode
  def block?; end
  include Reek::AST::SexpExtensions::ArgNodeBase
end
module Reek::AST::SexpExtensions::RestargNode
  def anonymous_splat?; end
  include Reek::AST::SexpExtensions::ArgNodeBase
end
module Reek::AST::SexpExtensions::KwrestargNode
  def anonymous_splat?; end
  include Reek::AST::SexpExtensions::ArgNodeBase
end
module Reek::AST::SexpExtensions::ShadowargNode
  include Reek::AST::SexpExtensions::ArgNodeBase
end
module Reek::AST::SexpExtensions::BeginNode
  def statements; end
end
module Reek::AST::SexpExtensions::BlockNode
  def args; end
  def block; end
  def call; end
  def parameter_names; end
  def parameters; end
  def simple_name; end
  def without_block_arguments?; end
end
module Reek::AST::SexpExtensions::CaseNode
  def body_nodes(type, ignoring = nil); end
  def condition; end
  def else_body; end
end
module Reek::AST::SexpExtensions::ConstNode
  def name; end
  def namespace; end
  def simple_name; end
end
module Reek::AST::SexpExtensions::IfNode
  def body_nodes(type, ignoring = nil); end
  def condition; end
end
module Reek::AST::SexpExtensions::LambdaNode
  def name; end
end
module Reek::AST::SexpExtensions::LogicOperatorBase
  def body_nodes(type, ignoring = nil); end
  def condition; end
end
module Reek::AST::SexpExtensions::AndNode
  include Reek::AST::SexpExtensions::LogicOperatorBase
end
module Reek::AST::SexpExtensions::OrNode
  include Reek::AST::SexpExtensions::LogicOperatorBase
end
module Reek::AST::SexpExtensions::MethodNodeBase
  def arg_names; end
  def arguments; end
  def body_nodes(types, ignoring = nil); end
  def ends_with_bang?; end
  def name_without_bang; end
  def parameter_names; end
  def parameters; end
end
module Reek::AST::SexpExtensions::DefNode
  def argslist; end
  def body; end
  def depends_on_instance?; end
  def full_name(outer); end
  def name; end
  include Reek::AST::SexpExtensions::MethodNodeBase
end
module Reek::AST::SexpExtensions::DefsNode
  def argslist; end
  def body; end
  def depends_on_instance?; end
  def full_name(outer); end
  def name; end
  def receiver; end
  include Reek::AST::SexpExtensions::MethodNodeBase
end
module Reek::AST::SexpExtensions::ConstantDefiningNodeBase
  def full_name(outer); end
  def simple_name; end
end
module Reek::AST::SexpExtensions::ModuleNodeBase
  def direct_children; end
  def name; end
  include Reek::AST::SexpExtensions::ConstantDefiningNodeBase
end
module Reek::AST::SexpExtensions::ModuleNode
  include Reek::AST::SexpExtensions::ModuleNodeBase
end
module Reek::AST::SexpExtensions::ClassNode
  def superclass; end
  include Reek::AST::SexpExtensions::ModuleNodeBase
end
module Reek::AST::SexpExtensions::CasgnNode
  def constant_definition; end
  def defines_module?; end
  def name; end
  def superclass; end
  def value; end
  include Reek::AST::SexpExtensions::ConstantDefiningNodeBase
end
module Reek::AST::SexpExtensions::NestedAssignables
  def components; end
end
module Reek::AST::SexpExtensions::ArgsNode
  include Reek::AST::SexpExtensions::NestedAssignables
end
module Reek::AST::SexpExtensions::MlhsNode
  include Reek::AST::SexpExtensions::NestedAssignables
end
module Reek::AST::SexpExtensions::SelfNode
  def name; end
end
module Reek::AST::SexpExtensions::SendNode
  def args; end
  def attr_with_writable_flag?; end
  def attribute_writer?; end
  def module_creation_call?; end
  def module_creation_receiver?; end
  def name; end
  def object_creation_call?; end
  def participants; end
  def receiver; end
end
module Reek::AST::SexpExtensions::SuperNode
  def name; end
end
module Reek::AST::SexpExtensions::SymNode
  def full_name(outer); end
  def name; end
end
module Reek::AST::SexpExtensions::VariableBase
  def name; end
end
module Reek::AST::SexpExtensions::CvarNode
  include Reek::AST::SexpExtensions::VariableBase
end
module Reek::AST::SexpExtensions::IvarNode
  include Reek::AST::SexpExtensions::VariableBase
end
module Reek::AST::SexpExtensions::IvasgnNode
  include Reek::AST::SexpExtensions::VariableBase
end
module Reek::AST::SexpExtensions::LvarNode
  def var_name; end
  include Reek::AST::SexpExtensions::VariableBase
end
module Reek::AST::SexpExtensions::GvarNode
  include Reek::AST::SexpExtensions::VariableBase
end
module Reek::AST::SexpExtensions::WhenNode
  def body; end
  def condition_list; end
end
module Reek::AST::SexpExtensions::YieldNode
  def args; end
end
class Reek::AST::ASTNodeClassMap
  def extension_map; end
  def initialize; end
  def klass_for(type); end
  def klass_map; end
end
class Reek::TreeDresser
  def dress(sexp, comment_map); end
  def initialize(klass_map: nil); end
  def klass_map; end
end
class Reek::AST::Builder < Parser::Builders::Default
  def string_value(token); end
end
module Reek::Source
end
class Reek::Source::SourceCode
  def code; end
  def initialize(source:, origin: nil, parser: nil); end
  def origin; end
  def parse; end
  def parser; end
  def self.default_parser; end
  def self.from(source, origin: nil); end
  def source; end
  def syntax_tree; end
end
class Reek::Examiner
  def detector_repository; end
  def examine_tree; end
  def initialize(source, filter_by_smells: nil, configuration: nil, detector_repository_class: nil, error_handler: nil); end
  def origin; end
  def run; end
  def smells; end
  def smells_count; end
  def smelly?; end
  def source; end
  def syntax_tree; end
  def wrap_exceptions; end
end
class Reek::Examiner::NullHandler
  def handle(_exception); end
end
module Reek::Report
  def self.heading_formatter(heading_format); end
  def self.location_formatter(location_format); end
  def self.progress_formatter(progress_format); end
  def self.report_class(report_format); end
  def self.warning_formatter_class(warning_format); end
end
class Reek::Report::CodeClimateFingerprint
  def compute; end
  def identify_warning; end
  def identifying_aspects; end
  def initialize(warning); end
  def parameters; end
  def warning; end
  def warning_uniquely_identifiable?; end
end
module Reek::Report::CodeClimateConfiguration
  def self.load; end
end
class Reek::Report::CodeClimateFormatter
  def categories; end
  def check_name; end
  def configuration; end
  def content; end
  def description; end
  def fingerprint; end
  def initialize(warning); end
  def location; end
  def remediation_points; end
  def render; end
  def warning; end
end
class Reek::Report::BaseReport
  def add_examiner(examiner); end
  def examiners; end
  def heading_formatter; end
  def initialize(heading_formatter: nil, sort_by_issue_count: nil, warning_formatter: nil, progress_formatter: nil); end
  def progress_formatter; end
  def show; end
  def smells; end
  def smells?; end
  def sort_by_issue_count; end
  def total_smell_count; end
  def total_smell_count=(arg0); end
  def warning_formatter; end
end
class Reek::Report::CodeClimateReport < Reek::Report::BaseReport
  def show(out = nil); end
end
class Reek::Report::HTMLReport < Reek::Report::BaseReport
  def show; end
end
class Reek::Report::JSONReport < Reek::Report::BaseReport
  def show(out = nil); end
end
class Reek::Report::TextReport < Reek::Report::BaseReport
  def add_examiner(examiner); end
  def display_summary; end
  def display_total_smell_count; end
  def initialize(*args); end
  def show; end
  def smell_summaries; end
  def sort_examiners; end
  def summarize_single_examiner(examiner); end
  def total_smell_count_message; end
end
class Reek::Report::XMLReport < Reek::Report::BaseReport
  def checkstyle; end
  def document; end
  def error(smell, line); end
  def file(name, smells); end
  def show; end
end
class Reek::Report::YAMLReport < Reek::Report::BaseReport
  def show(out = nil); end
end
class Reek::Report::HeadingFormatterBase
  def formatted_header(examiner); end
  def header(examiner); end
  def show_header?(_examiner); end
end
class Reek::Report::VerboseHeadingFormatter < Reek::Report::HeadingFormatterBase
  def show_header?(_examiner); end
end
class Reek::Report::QuietHeadingFormatter < Reek::Report::HeadingFormatterBase
  def show_header?(examiner); end
end
module Reek::Report::BlankLocationFormatter
  def format(_warning); end
  def self.format(_warning); end
end
module Reek::Report::DefaultLocationFormatter
  def format(warning); end
  def self.format(warning); end
end
module Reek::Report::SingleLineLocationFormatter
  def format(warning); end
  def self.format(warning); end
end
module Reek::Report::ProgressFormatter
end
class Reek::Report::ProgressFormatter::Base
  def footer; end
  def header; end
  def initialize(sources_count); end
  def progress(_examiner); end
  def sources_count; end
end
class Reek::Report::ProgressFormatter::Dots < Reek::Report::ProgressFormatter::Base
  def display_clean; end
  def display_smelly; end
  def footer; end
  def header; end
  def progress(examiner); end
end
class Reek::Report::ProgressFormatter::Quiet < Reek::Report::ProgressFormatter::Base
  def footer; end
  def header; end
  def progress(_examiner); end
end
class Reek::Report::SimpleWarningFormatter
  def format(warning); end
  def format_code_climate_hash(warning); end
  def format_list(warnings); end
  def initialize(location_formatter: nil); end
  def location_formatter; end
end
class Reek::Report::DocumentationLinkWarningFormatter < Reek::Report::SimpleWarningFormatter
  def format(warning); end
end