TP=1
HF_FORMAT_DIR="/model/Aaronzhu/OkapiModel/Qwen2.5/Qwen2_5-7B"
MEGATRON_FORMAT_DIR="/model/Aaronzhu/OkapiModel/Qwen2.5/Qwen2_5-7B-Megatron"
TOKENIZER_MODEL="/model/Aaronzhu/OkapiModel/Qwen2.5/Qwen2_5-7B"
VOCAB_SIZE=152064


# HF_FORMAT_DIR="/model/Aaronzhu/LLAMA3"
# MEGATRON_FORMAT_DIR="/model/Aaronzhu/OkapiModel/Qwen2.5/Qwen2_5-7B-Megatron"
# TOKENIZER_MODEL="/model/Aaronzhu/LLAMA3"

# python tools/checkpoint/convert.py --model-type GPT \
#     --model-size qwen2.5-7B \
#     --model-type GPT \
#     --loader llama_mistral \
#     --saver megatron \
#     --target-tensor-parallel-size ${TP} \
#     --checkpoint-type hf \
#     --load-dir ${HF_FORMAT_DIR} \
#     --save-dir ${MEGATRON_FORMAT_DIR} \
#     --tokenizer-model ${TOKENIZER_MODEL} \
#     --bf16



python tools/checkpoint/convert.py --model-type GPT \
    --model-size qwen2.5-7B \
    --model-type GPT \
    --loader llama_mistral \
    --saver mcore \
    --target-tensor-parallel-size ${TP} \
    --checkpoint-type hf \
    --load-dir ${HF_FORMAT_DIR} \
    --save-dir ${MEGATRON_FORMAT_DIR} \
    --tokenizer-model ${TOKENIZER_MODEL} \
    --bf16